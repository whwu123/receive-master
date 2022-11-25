package com.ruoyi.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 查询对象 rhd_project_list
 * 
 * @author wch
 * @date 2022-11-25
 */
public class RhdProjectList extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 项目ID */
    private Long projectId;

    /** 删除标志 */
    private String delFlag;

    /** 状态 */
    private String status;

    /** 扩展字段1 */
    private String extend1;

    /** 扩展字段2 */
    private String extend2;

    /** 项目名称 */
    @Excel(name = "项目名称")
    private String projectName;

    /** 项目类型 */
    @Excel(name = "项目类型")
    private String projectType;

    /** 价格 */
    @Excel(name = "价格")
    private BigDecimal projectPrice;

    /** 号段 */
    @Excel(name = "号段")
    private String themRoughly;

    /** 供卡数量 */
    @Excel(name = "供卡数量")
    private Long cardsSupplied;

    /** 对接状态 */
    @Excel(name = "对接状态")
    private String dockingStatus;

    /** 公开专属 */
    private String openExclusive;

    /** 指定专属 */
    private String appointExclusive;

    /** 我的专属 */
    private String myExclusive;

    public void setProjectId(Long projectId) 
    {
        this.projectId = projectId;
    }

    public Long getProjectId() 
    {
        return projectId;
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
    public void setProjectName(String projectName) 
    {
        this.projectName = projectName;
    }

    public String getProjectName() 
    {
        return projectName;
    }
    public void setProjectType(String projectType) 
    {
        this.projectType = projectType;
    }

    public String getProjectType() 
    {
        return projectType;
    }
    public void setProjectPrice(BigDecimal projectPrice) 
    {
        this.projectPrice = projectPrice;
    }

    public BigDecimal getProjectPrice() 
    {
        return projectPrice;
    }
    public void setThemRoughly(String themRoughly) 
    {
        this.themRoughly = themRoughly;
    }

    public String getThemRoughly() 
    {
        return themRoughly;
    }
    public void setCardsSupplied(Long cardsSupplied) 
    {
        this.cardsSupplied = cardsSupplied;
    }

    public Long getCardsSupplied() 
    {
        return cardsSupplied;
    }
    public void setDockingStatus(String dockingStatus) 
    {
        this.dockingStatus = dockingStatus;
    }

    public String getDockingStatus() 
    {
        return dockingStatus;
    }
    public void setOpenExclusive(String openExclusive) 
    {
        this.openExclusive = openExclusive;
    }

    public String getOpenExclusive() 
    {
        return openExclusive;
    }
    public void setAppointExclusive(String appointExclusive) 
    {
        this.appointExclusive = appointExclusive;
    }

    public String getAppointExclusive() 
    {
        return appointExclusive;
    }
    public void setMyExclusive(String myExclusive) 
    {
        this.myExclusive = myExclusive;
    }

    public String getMyExclusive() 
    {
        return myExclusive;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("projectId", getProjectId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .append("delFlag", getDelFlag())
            .append("status", getStatus())
            .append("extend1", getExtend1())
            .append("extend2", getExtend2())
            .append("projectName", getProjectName())
            .append("projectType", getProjectType())
            .append("projectPrice", getProjectPrice())
            .append("themRoughly", getThemRoughly())
            .append("cardsSupplied", getCardsSupplied())
            .append("dockingStatus", getDockingStatus())
            .append("openExclusive", getOpenExclusive())
            .append("appointExclusive", getAppointExclusive())
            .append("myExclusive", getMyExclusive())
            .toString();
    }
}
