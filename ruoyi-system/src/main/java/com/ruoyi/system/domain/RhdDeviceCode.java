package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 设备列表对象 rhd_device_code
 * 
 * @author wch
 * @date 2022-12-29
 */
public class RhdDeviceCode extends BaseEntity
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
    private String extend1;

    /** 扩展字段2 */
    private String extend2;

    /** 在线卡数 */
    @Excel(name = "在线卡数")
    private Long onlineCardNumber;

    /** 本机卡数 */
    @Excel(name = "本机卡数")
    private Long localCards;

    /** 设备码 */
    @Excel(name = "设备码")
    private String deviceCodeStr;

    /** 版本号 */
    @Excel(name = "版本号")
    private String versions;

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
    public void setOnlineCardNumber(Long onlineCardNumber) 
    {
        this.onlineCardNumber = onlineCardNumber;
    }

    public Long getOnlineCardNumber() 
    {
        return onlineCardNumber;
    }
    public void setLocalCards(Long localCards) 
    {
        this.localCards = localCards;
    }

    public Long getLocalCards() 
    {
        return localCards;
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
            .append("onlineCardNumber", getOnlineCardNumber())
            .append("localCards", getLocalCards())
            .append("deviceCodeStr", getDeviceCodeStr())
            .append("versions", getVersions())
            .toString();
    }
}
