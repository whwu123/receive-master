package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 邮箱验证码对象 rhd_email_code
 * 
 * @author ruoyi
 * @date 2022-12-22
 */
public class RhdEmailCode extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 删除状态 */
    private String delFlag;

    /** 使用状态 */
    @Excel(name = "使用状态")
    private String status;

    /** 扩展字段1 */
    @Excel(name = "扩展字段1")
    private String extend1;

    /** 扩展字段2 */
    @Excel(name = "扩展字段2")
    private String extend2;

    /** 邮箱地址 */
    @Excel(name = "邮箱地址")
    private String emailAddress;

    /** 邮箱验证码 */
    @Excel(name = "邮箱验证码")
    private String emailCode;

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
    public void setEmailAddress(String emailAddress) 
    {
        this.emailAddress = emailAddress;
    }

    public String getEmailAddress() 
    {
        return emailAddress;
    }
    public void setEmailCode(String emailCode) 
    {
        this.emailCode = emailCode;
    }

    public String getEmailCode() 
    {
        return emailCode;
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
            .append("emailAddress", getEmailAddress())
            .append("emailCode", getEmailCode())
            .toString();
    }
}
