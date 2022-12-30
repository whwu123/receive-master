package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * cardsList对象 rhd_cards_list
 * 
 * @author ruoyi
 * @date 2022-12-29
 */
public class RhdCardsList extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 删除状态 */
    private String delFlag;

    /** 数据状态 */
    @Excel(name = "数据状态")
    private String status;

    /** 扩展字段1 */
    @Excel(name = "扩展字段1")
    private String extend1;

    /** 扩展字段2 */
    @Excel(name = "扩展字段2")
    private String extend2;

    /** 设备码 */
    @Excel(name = "设备码")
    private String deviceCodeStr;

    /**  */
    private String versions;

    /** 端口号 */
    @Excel(name = "端口号")
    private String portNumber;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phoneNumber;

    /** 运营商 */
    @Excel(name = "运营商")
    private String operators;

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
    public void setDeviceCodeStr(String deviceCodeStr) 
    {
        this.deviceCodeStr = deviceCodeStr;
    }

    public String getDeviceCodeStr() 
    {
        return deviceCodeStr;
    }
    public void setVersions(String versions) 
    {
        this.versions = versions;
    }

    public String getVersions() 
    {
        return versions;
    }
    public void setPortNumber(String portNumber) 
    {
        this.portNumber = portNumber;
    }

    public String getPortNumber() 
    {
        return portNumber;
    }
    public void setPhoneNumber(String phoneNumber) 
    {
        this.phoneNumber = phoneNumber;
    }

    public String getPhoneNumber() 
    {
        return phoneNumber;
    }
    public void setOperators(String operators) 
    {
        this.operators = operators;
    }

    public String getOperators() 
    {
        return operators;
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
            .append("deviceCodeStr", getDeviceCodeStr())
            .append("versions", getVersions())
            .append("portNumber", getPortNumber())
            .append("phoneNumber", getPhoneNumber())
            .append("operators", getOperators())
            .toString();
    }
}
