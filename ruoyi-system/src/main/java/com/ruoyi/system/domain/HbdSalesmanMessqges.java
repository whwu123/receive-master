package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 信息管理对象 hbd_salesman_messqges
 *
 * @author wuchunhui
 * @date 2022-05-20
 */
public class HbdSalesmanMessqges extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 类型 */
    @Excel(name = "类型")
    private Long smType;

    /** 金额 */
    @Excel(name = "金额")
    private Double smMoney;

    /** 状态 */
    @Excel(name = "状态")
    private Long state;

    /** 营销员姓名 */
    @Excel(name = "营销员姓名")
    private String salesmanName;

    /** 营销员Id */
    @Excel(name = "营销员Id")
    private Long salesmanId;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setSmType(Long smType)
    {
        this.smType = smType;
    }

    public Long getSmType()
    {
        return smType;
    }
    public void setSmMoney(Double smMoney)
    {
        this.smMoney = smMoney;
    }

    public Double getSmMoney()
    {
        return smMoney;
    }
    public void setState(Long state)
    {
        this.state = state;
    }

    public Long getState()
    {
        return state;
    }
    public void setSalesmanName(String salesmanName)
    {
        this.salesmanName = salesmanName;
    }

    public String getSalesmanName()
    {
        return salesmanName;
    }
    public void setSalesmanId(Long salesmanId)
    {
        this.salesmanId = salesmanId;
    }

    public Long getSalesmanId()
    {
        return salesmanId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("smType", getSmType())
                .append("smMoney", getSmMoney())
                .append("state", getState())
                .append("salesmanName", getSalesmanName())
                .append("salesmanId", getSalesmanId())
                .append("remark", getRemark())
                .toString();
    }
}
