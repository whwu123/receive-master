package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学校管理对象 school
 * 
 * @author wuchunhui
 * @date 2022-05-13
 */
public class School extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 学校名称 */
    @Excel(name = "学校名称")
    private String schoolName;

    /** 学校类型 */
    @Excel(name = "学校类型")
    private Long schoolType;

    /** 是否公立 */
    @Excel(name = "是否公立")
    private Long isPublic;

    /** 市部门 */
    @Excel(name = "市部门")
    private Long branchDeptId;

    /** 区县部门 */
    @Excel(name = "区县部门")
    private Long countyDeptId;

    /** 状态 */
    private Long delFlag;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setSchoolName(String schoolName) 
    {
        this.schoolName = schoolName;
    }

    public String getSchoolName() 
    {
        return schoolName;
    }
    public void setSchoolType(Long schoolType) 
    {
        this.schoolType = schoolType;
    }

    public Long getSchoolType() 
    {
        return schoolType;
    }
    public void setIsPublic(Long isPublic) 
    {
        this.isPublic = isPublic;
    }

    public Long getIsPublic() 
    {
        return isPublic;
    }
    public void setBranchDeptId(Long branchDeptId) 
    {
        this.branchDeptId = branchDeptId;
    }

    public Long getBranchDeptId() 
    {
        return branchDeptId;
    }
    public void setCountyDeptId(Long countyDeptId) 
    {
        this.countyDeptId = countyDeptId;
    }

    public Long getCountyDeptId() 
    {
        return countyDeptId;
    }
    public void setDelFlag(Long delFlag) 
    {
        this.delFlag = delFlag;
    }

    public Long getDelFlag() 
    {
        return delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("schoolName", getSchoolName())
            .append("schoolType", getSchoolType())
            .append("isPublic", getIsPublic())
            .append("branchDeptId", getBranchDeptId())
            .append("countyDeptId", getCountyDeptId())
            .append("delFlag", getDelFlag())
            .append("remark", getRemark())
            .toString();
    }
}
