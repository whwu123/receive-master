package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 用户信息对象 rhd_userinfo_netty
 * 
 * @author wch
 * @date 2023-01-10
 */
public class RhdUserinfoNetty extends BaseEntity
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

    /** 用户名 */
    @Excel(name = "用户名")
    private String loginName;

    /** 设备码 */
    @Excel(name = "设备码")
    private String deviceCode;

    /** 长连接ID */
    @Excel(name = "长连接ID")
    private String nettyId;

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
    public void setLoginName(String loginName) 
    {
        this.loginName = loginName;
    }

    public String getLoginName() 
    {
        return loginName;
    }
    public void setDeviceCode(String deviceCode) 
    {
        this.deviceCode = deviceCode;
    }

    public String getDeviceCode() 
    {
        return deviceCode;
    }
    public void setNettyId(String nettyId) 
    {
        this.nettyId = nettyId;
    }

    public String getNettyId() 
    {
        return nettyId;
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
            .append("loginName", getLoginName())
            .append("deviceCode", getDeviceCode())
            .append("nettyId", getNettyId())
            .toString();
    }
}
