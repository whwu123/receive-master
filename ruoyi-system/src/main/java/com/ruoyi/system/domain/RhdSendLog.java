package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 发信管理对象 rhd_send_log
 * 
 * @author wch
 * @date 2023-01-12
 */
public class RhdSendLog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 删除状态 */
    private String delFlag;

    /** 数据状态 */
    @Excel(name = "数据状态")
    private String status;

    /** 扩展字段1 */
    private String extend1;

    /** 扩展字段2 */
    private String extend2;

    /** 目标状态 */
    @Excel(name = "目标状态")
    private String sendStatus;

    /** COM串口 */
    @Excel(name = "COM串口")
    private String comSerial;

    /** 短信内容 */
    private String sendMsg;

    /** 目标号码 */
    @Excel(name = "目标号码")
    private String recvPhone;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setExtend1(String extend1) 
    {
        this.extend1 = extend1;
    }

    public String getExtend1() 
    {
        return extend1;
    }
    public void setExtend2(String extend2) 
    {
        this.extend2 = extend2;
    }

    public String getExtend2() 
    {
        return extend2;
    }
    public void setSendStatus(String sendStatus) 
    {
        this.sendStatus = sendStatus;
    }

    public String getSendStatus() 
    {
        return sendStatus;
    }
    public void setComSerial(String comSerial) 
    {
        this.comSerial = comSerial;
    }

    public String getComSerial() 
    {
        return comSerial;
    }
    public void setSendMsg(String sendMsg) 
    {
        this.sendMsg = sendMsg;
    }

    public String getSendMsg() 
    {
        return sendMsg;
    }
    public void setRecvPhone(String recvPhone) 
    {
        this.recvPhone = recvPhone;
    }

    public String getRecvPhone() 
    {
        return recvPhone;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .append("delFlag", getDelFlag())
            .append("status", getStatus())
            .append("extend1", getExtend1())
            .append("extend2", getExtend2())
            .append("sendStatus", getSendStatus())
            .append("comSerial", getComSerial())
            .append("sendMsg", getSendMsg())
            .append("recvPhone", getRecvPhone())
            .toString();
    }
}
