package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * operatorPage对象 rhd_operation_page
 * 
 * @author wch
 * @date 2022-11-24
 */
public class RhdOperationPage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 删除标志 */
    private String delFlag;

    /** 状态 */
    @Excel(name = "状态")
    private String status;

    /** 扩展字段1 */
    @Excel(name = "扩展字段1")
    private String extend1;

    /** 扩展字段2 */
    @Excel(name = "扩展字段2")
    private String extend2;

    /** 项目表ID */
    @Excel(name = "项目表ID")
    private Long projectId;

    /** 项目名称 */
    @Excel(name = "项目名称")
    private String projectName;

    /** 手机号码 */
    @Excel(name = "手机号码")
    private String phoneNumber;

    /** 短信内容 */
    @Excel(name = "短信内容")
    private String smsContent;

    /** 验证码 */
    @Excel(name = "验证码")
    private String verificationCode;

    /** 发送状态 */
    @Excel(name = "发送状态")
    private String sendStatus;

    /** 运营商 */
    @Excel(name = "运营商")
    private String phoneOperator;

    /** 归属地 */
    @Excel(name = "归属地")
    private String phoneAttribution;

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
    public void setProjectId(Long projectId) 
    {
        this.projectId = projectId;
    }

    public Long getProjectId() 
    {
        return projectId;
    }
    public void setProjectName(String projectName) 
    {
        this.projectName = projectName;
    }

    public String getProjectName() 
    {
        return projectName;
    }
    public void setPhoneNumber(String phoneNumber) 
    {
        this.phoneNumber = phoneNumber;
    }

    public String getPhoneNumber() 
    {
        return phoneNumber;
    }
    public void setSmsContent(String smsContent) 
    {
        this.smsContent = smsContent;
    }

    public String getSmsContent() 
    {
        return smsContent;
    }
    public void setVerificationCode(String verificationCode) 
    {
        this.verificationCode = verificationCode;
    }

    public String getVerificationCode() 
    {
        return verificationCode;
    }
    public void setSendStatus(String sendStatus) 
    {
        this.sendStatus = sendStatus;
    }

    public String getSendStatus() 
    {
        return sendStatus;
    }
    public void setPhoneOperator(String phoneOperator) 
    {
        this.phoneOperator = phoneOperator;
    }

    public String getPhoneOperator() 
    {
        return phoneOperator;
    }
    public void setPhoneAttribution(String phoneAttribution) 
    {
        this.phoneAttribution = phoneAttribution;
    }

    public String getPhoneAttribution() 
    {
        return phoneAttribution;
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
            .append("projectId", getProjectId())
            .append("projectName", getProjectName())
            .append("phoneNumber", getPhoneNumber())
            .append("smsContent", getSmsContent())
            .append("verificationCode", getVerificationCode())
            .append("sendStatus", getSendStatus())
            .append("phoneOperator", getPhoneOperator())
            .append("phoneAttribution", getPhoneAttribution())
            .toString();
    }
}
