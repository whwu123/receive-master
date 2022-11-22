package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 支出管理对象 n_expend
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
public class NExpend extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 名称 */
    @Excel(name = "名称")
    private String neTitle;

    /** 金额 */
    @Excel(name = "金额")
    private Long neMoney;

    /** 类型 */
    @Excel(name = "类型")
    private String neType;

    /** 状态 */
    @Excel(name = "状态")
    private Long neStatus;

    /** 上一期结余 */
    @Excel(name = "上一期结余")
    private Long neLastSurplus;

    /** 内容 */
    @Excel(name = "内容")
    private String neContent;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setNeTitle(String neTitle) 
    {
        this.neTitle = neTitle;
    }

    public String getNeTitle() 
    {
        return neTitle;
    }
    public void setNeMoney(Long neMoney) 
    {
        this.neMoney = neMoney;
    }

    public Long getNeMoney() 
    {
        return neMoney;
    }
    public void setNeType(String neType) 
    {
        this.neType = neType;
    }

    public String getNeType() 
    {
        return neType;
    }
    public void setNeStatus(Long neStatus) 
    {
        this.neStatus = neStatus;
    }

    public Long getNeStatus() 
    {
        return neStatus;
    }
    public void setNeLastSurplus(Long neLastSurplus) 
    {
        this.neLastSurplus = neLastSurplus;
    }

    public Long getNeLastSurplus() 
    {
        return neLastSurplus;
    }
    public void setNeContent(String neContent) 
    {
        this.neContent = neContent;
    }

    public String getNeContent() 
    {
        return neContent;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("neTitle", getNeTitle())
            .append("neMoney", getNeMoney())
            .append("neType", getNeType())
            .append("neStatus", getNeStatus())
            .append("neLastSurplus", getNeLastSurplus())
            .append("neContent", getNeContent())
            .append("remark", getRemark())
            .toString();
    }
}
