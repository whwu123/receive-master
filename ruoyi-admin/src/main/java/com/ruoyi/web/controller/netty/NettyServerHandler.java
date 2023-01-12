package com.ruoyi.web.controller.netty;

import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.utils.uuid.IdUtils;
import com.ruoyi.system.domain.RhdUserinfoNetty;
import com.ruoyi.system.service.IRhdUserinfoNettyService;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.group.ChannelGroup;
import io.netty.channel.group.DefaultChannelGroup;
import io.netty.util.concurrent.GlobalEventExecutor;
import lombok.extern.slf4j.Slf4j;
import java.io.UnsupportedEncodingException;

@Slf4j
public class NettyServerHandler extends ChannelInboundHandlerAdapter {


    private static IRhdUserinfoNettyService userinfoNettyService;

    static {
        userinfoNettyService = SpringUtil.getBean(IRhdUserinfoNettyService.class);
    }

    //定义一个channle 组，管理所有的channel
    //GlobalEventExecutor.INSTANCE) 是全局的事件执行器，是一个单例
    public static ChannelGroup channelGroup = new DefaultChannelGroup(GlobalEventExecutor.INSTANCE);

    /**
     * 有客户端与服务器发生连接时执行此方法
     * 1.打印提示信息
     * 2.将客户端保存到 channelGroup 中
     */
    @Override
    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        Channel channel = ctx.channel();
        System.err.println("有新的客户端与服务器发生连接。客户端地址：" + channel.remoteAddress());
        channelGroup.add(channel);

    }

    /**
     * 当有客户端与服务器断开连接时执行此方法，此时会自动将此客户端从 channelGroup 中移除
     * 1.打印提示信息
     */
    @Override
    public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
        Channel channel = ctx.channel();
        System.err.println("有客户端与服务器断开连接。客户端地址：" + channel.remoteAddress());
    }

    /**
     * 表示channel 处于活动状态
     */
    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        System.out.println(ctx.channel().remoteAddress() + " 处于活动状态");
    }

    /**
     * 表示channel 处于不活动状态
     */
    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        System.out.println(ctx.channel().remoteAddress() + " 处于不活动状态");
    }

    /**
     * 读取到客户端发来的数据数据
     */
    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg)  throws Exception {
        JSONObject jsonObject = JSONObject.parseObject(msg.toString());
        String cmdStr = jsonObject.getString("cmd");
        if(cmdStr.equals("userInfo")){
            //进行用户信息长连接的插入
            JSONObject userinfoNettyObject = jsonObject.getJSONObject("data");
            String loginName = userinfoNettyObject.getString("loginName");
            String deviceCodeStr = userinfoNettyObject.getString("deviceCodeStr");
            if(deviceCodeStr!=null && !deviceCodeStr.isEmpty()){
                //按照设备码进行原来的数据删除
                userinfoNettyService.deleteRhdUserinfoNettyByDeviceCode(deviceCodeStr);
                String nettyId = IdUtils.simpleUUID();
                RhdUserinfoNetty rhdUserinfoNetty = new RhdUserinfoNetty();
                rhdUserinfoNetty.setNettyId(nettyId);
                rhdUserinfoNetty.setDeviceCode(deviceCodeStr);
                rhdUserinfoNetty.setLoginName(loginName);
                rhdUserinfoNetty.setStatus("0");
                userinfoNettyService.insertRhdUserinfoNetty(rhdUserinfoNetty);
                // 保存当前连接
                ChannelMap.addChannel(nettyId,ctx.channel());
            }

        }
        ctx.writeAndFlush(msg.toString());

    }


    private ByteBuf getSendByteBuf(String message) throws UnsupportedEncodingException {
        byte[] req = message.getBytes("UTF-8");
        ByteBuf pingMessage = Unpooled.buffer();
        pingMessage.writeBytes(req);
        return pingMessage;
    }
    /**
     * 当我们读取完成数据的时候触发的监听
     *
     * @param ctx
     * @throws Exception
     */
    @Override
    public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
        System.out.println("--------服务端数据读取完毕---------");

    }

    /**
     * 处理异常
     */
    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        log.error("发生异常。异常信息：{}", cause.getMessage());
        //关闭通道
        ctx.close();
    }


}
