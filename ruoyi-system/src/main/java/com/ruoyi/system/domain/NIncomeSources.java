package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 收入信息管理对象 n_income_sources
 *
 * @author wuchunhui
 * @date 2022-05-16
 */
public class NIncomeSources extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 名称 */
    @Excel(name = "名称")
    private String nisName;

    /** 金额 */
    @Excel(name = "金额")
    private Long nisMoney;

    /** 类型 */
    @Excel(name = "类型")
    private String nisType;

    /** 状态 */
    @Excel(name = "状态")
    private Long nisStatus;

    /** 主表ID */
    @Excel(name = "主表ID")
    private Long niId;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setNisName(String nisName)
    {
        this.nisName = nisName;
    }

    public String getNisName()
    {
        return nisName;
    }
    public void setNisMoney(Long nisMoney)
    {
        this.nisMoney = nisMoney;
    }

    public Long getNisMoney()
    {
        return nisMoney;
    }
    public void setNisType(String nisType)
    {
        this.nisType = nisType;
    }

    public String getNisType()
    {
        return nisType;
    }
    public void setNisStatus(Long nisStatus)
    {
        this.nisStatus = nisStatus;
    }

    public Long getNisStatus()
    {
        return nisStatus;
    }
    public void setNiId(Long niId)
    {
        this.niId = niId;
    }

    public Long getNiId()
    {
        return niId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("nisName", getNisName())
                .append("nisMoney", getNisMoney())
                .append("nisType", getNisType())
                .append("nisStatus", getNisStatus())
                .append("remark", getRemark())
                .append("niId", getNiId())
                .toString();
    }
}
