package com.ruoyi.system.domain;

import java.util.List;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 收入管理对象 n_income
 *
 * @author wuchunhui
 * @date 2022-05-16
 */
public class NIncome extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 名称 */
    @Excel(name = "名称")
    private String niTitle;

    /** 结余 */
    @Excel(name = "结余")
    private Long niSurplus;

    /** 融资金额 */
    @Excel(name = "融资金额")
    private Long money;

    /** 类型 */
    @Excel(name = "类型")
    private String niType;

    /** 状态 */
    @Excel(name = "状态")
    private Long niStatus;

    /** 收入信息管理信息 */
    private List<NIncomeSources> nIncomeSourcesList;

    public Long getMoney() {
        return money;
    }

    public void setMoney(Long money) {
        this.money = money;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setNiTitle(String niTitle)
    {
        this.niTitle = niTitle;
    }

    public String getNiTitle()
    {
        return niTitle;
    }
    public void setNiSurplus(Long niSurplus)
    {
        this.niSurplus = niSurplus;
    }

    public Long getNiSurplus()
    {
        return niSurplus;
    }
    public void setNiType(String niType)
    {
        this.niType = niType;
    }

    public String getNiType()
    {
        return niType;
    }
    public void setNiStatus(Long niStatus)
    {
        this.niStatus = niStatus;
    }

    public Long getNiStatus()
    {
        return niStatus;
    }

    public List<NIncomeSources> getNIncomeSourcesList()
    {
        return nIncomeSourcesList;
    }

    public void setNIncomeSourcesList(List<NIncomeSources> nIncomeSourcesList)
    {
        this.nIncomeSourcesList = nIncomeSourcesList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("niTitle", getNiTitle())
                .append("niSurplus", getNiSurplus())
                .append("niType", getNiType())
                .append("niStatus", getNiStatus())
                .append("remark", getRemark())
                .append("nIncomeSourcesList", getNIncomeSourcesList())
                .toString();
    }
}
