package com.ruoyi.web.controller.system;

import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.core.domain.R;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.domain.HbdSalesman;
import com.ruoyi.system.domain.RhdExclusiveProject;
import com.ruoyi.system.domain.RhdSendLog;
import com.ruoyi.system.domain.RhdUserinfoNetty;
import com.ruoyi.system.service.IRhdExclusiveProjectService;
import com.ruoyi.system.service.IRhdSendLogService;
import com.ruoyi.system.service.IRhdUserinfoNettyService;
import com.ruoyi.web.controller.netty.ChannelMap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFutureListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

@Controller
@RequestMapping("/rhd/web")
public class RhdWebController {
    private String prefix = "system/rhdweb";

    @Autowired
    private IRhdExclusiveProjectService exclusiveProjectService;
    @Autowired
    private IRhdUserinfoNettyService userinfoNettyService;
    @Autowired
    private IRhdSendLogService sendLogService;

    @GetMapping("/userSide")
    public String userSide(ModelMap mmap,String dockingCode) {
        if(StringUtils.isNotNull(dockingCode)){
            //根据对接码查询专属项目
            RhdExclusiveProject rhdExclusiveProject = new RhdExclusiveProject();
            rhdExclusiveProject.setDockingCode(dockingCode);
            RhdExclusiveProject newRhdExclusiveProject = exclusiveProjectService.selectExculsieProject(rhdExclusiveProject);
            if(newRhdExclusiveProject!=null){
                mmap.put("newRhdExclusiveProject",newRhdExclusiveProject);
                return prefix + "/userSide";
            }else{
                return prefix + "/error";
            }
        }
        return prefix + "/userSide";

    }

    @GetMapping("/sendMessage")
    public String sendData(ModelMap mmap,String dockingCode) {
        if(StringUtils.isNotNull(dockingCode)){
            //根据对接码查询专属项目
            RhdExclusiveProject rhdExclusiveProject = new RhdExclusiveProject();
            rhdExclusiveProject.setDockingCode(dockingCode);
            RhdExclusiveProject newRhdExclusiveProject = exclusiveProjectService.selectExculsieProject(rhdExclusiveProject);
            if(newRhdExclusiveProject!=null){
                mmap.put("newRhdExclusiveProject",newRhdExclusiveProject);
                return prefix + "/sendMessage";
            }else{
                return prefix + "/error";
            }
        }
        return prefix + "/sendMessage";

    }

    @GetMapping( "/getMessageLogData")
    @ResponseBody
    public R<List<RhdSendLog>> getMessageLogData(String dockingCode) {
        List<RhdSendLog> rhdSendLogList = null;
        if(StringUtils.isNotNull(dockingCode)){
            //通过对接码拿到发送日志的数据
            RhdSendLog rhdSendLog = new RhdSendLog();
            rhdSendLog.setExtend1(dockingCode);
            rhdSendLog.setStatus("0");
            rhdSendLogList = sendLogService.selectRhdSendLogList(rhdSendLog);
        }else{
            return R.fail("对接码必填");
        }
        return R.ok(rhdSendLogList);
    }

    @PostMapping( "/sendMessageData")
    @ResponseBody
    public R<String> sendMessageData(String comSerial,String sendMsg,String recvPhone,String deviceCode,String dockingCode) throws  Exception{
        RhdSendLog rhdSendLog = new RhdSendLog();
        //把发送的信息存入数据库中
        rhdSendLog.setComSerial(comSerial);
        rhdSendLog.setSendMsg(sendMsg);
        rhdSendLog.setRecvPhone(recvPhone);
        rhdSendLog.setExtend1(dockingCode);

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("cmd","sendSms");
        JSONObject jsonObjectData = new JSONObject();
        jsonObjectData.put("recvPhone",recvPhone);
        jsonObjectData.put("sendMsg",sendMsg);
        jsonObjectData.put("comSerial",comSerial);
        jsonObject.put("data",jsonObjectData);

        String receiveStr = JSONObject.toJSONString(jsonObject);
        //通过设备码拿到长连接的ID
        RhdUserinfoNetty userinfoNetty = userinfoNettyService.selectRhdUserinfoNettyByDeviceCode(deviceCode);
        if(userinfoNetty != null){
            String nettyId = userinfoNetty.getNettyId();
            if(nettyId != null ){
                ConcurrentHashMap<String, Channel> channelHashMap = ChannelMap.getChannelHashMap();
                try{
                    Channel channel = channelHashMap.get(nettyId);
                    // 判断是否活跃
                    if(channel==null || !channel.isActive()){
                        ChannelMap.getChannelHashMap().remove(nettyId);
                        return R.fail("连接已经中断");
                    }
                    channel.writeAndFlush(receiveStr).addListener((ChannelFutureListener) future -> {
                        StringBuilder sb = new StringBuilder();
                        if(!StringUtils.isEmpty(nettyId)){
                            sb.append("【").append(nettyId).append("】");
                        }
                        if (future.isSuccess()) {
                            System.out.println(sb.toString()+"回写成功"+receiveStr);
                            rhdSendLog.setStatus("0");
                            rhdSendLog.setSendStatus("0");
                        } else {
                            System.out.println(sb.toString()+"回写失败"+receiveStr);
                            rhdSendLog.setStatus("1");
                            rhdSendLog.setSendStatus("1");
                        }
                        sendLogService.insertRhdSendLog(rhdSendLog);
                    });
                }catch (Exception e){
                    e.printStackTrace();
                    return R.fail("卡商端未启动");
                }
            }else{
                return R.fail("卡商端未启动");
            }

        }else{
            return R.fail("卡商端未启动");
        }
        return R.ok(receiveStr);
    }


}
