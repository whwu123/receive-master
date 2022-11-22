package com.ruoyi.system.domain;

import java.util.List;

import com.ruoyi.common.annotation.Excels;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excel.Type;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 保险公司人员管理对象 insurance_company_person
 * 
 * @author wuchunhui
 * @date 2022-05-06
 */
public class InsuranceCompanyPerson extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;
    /** 公司对象 */
    @Excels({
            @Excel(name = "公司名称", targetAttr = "companyName", type = Type.EXPORT)
    })
    private InsuranceCompany insuranceCompany;

    /** 公司外键ID */
    private Long companyId;

    /** 人员姓名 */
    @Excel(name = "人员姓名")
    private String personName;

    /** 人员电话 */
    @Excel(name = "人员电话")
    private String personPhone;

    /** 人员性别 */
    @Excel(name = "人员性别" ,readConverterExp = "1=女,0=男")
    private Integer personSex;

    private Integer sort;

    /** 状态 */
    @Excel(name = "状态" ,readConverterExp = "1=失效,0=正常")
    private Integer state;

    /** 公司管理信息 */
    private List<InsuranceCompany> insuranceCompanyList;


    public InsuranceCompany getInsuranceCompany() {
        return insuranceCompany;
    }

    public void setInsuranceCompany(InsuranceCompany insuranceCompany) {
        this.insuranceCompany = insuranceCompany;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setCompanyId(Long companyId) 
    {
        this.companyId = companyId;
    }

    public Long getCompanyId() 
    {
        return companyId;
    }
    public void setPersonName(String personName) 
    {
        this.personName = personName;
    }

    public String getPersonName() 
    {
        return personName;
    }
    public void setPersonPhone(String personPhone) 
    {
        this.personPhone = personPhone;
    }

    public String getPersonPhone() 
    {
        return personPhone;
    }
    public void setPersonSex(Integer personSex) 
    {
        this.personSex = personSex;
    }

    public Integer getPersonSex() 
    {
        return personSex;
    }
    public void setSort(Integer sort) 
    {
        this.sort = sort;
    }

    public Integer getSort() 
    {
        return sort;
    }
    public void setState(Integer state) 
    {
        this.state = state;
    }

    public Integer getState() 
    {
        return state;
    }

    public List<InsuranceCompany> getInsuranceCompanyList()
    {
        return insuranceCompanyList;
    }

    public void setInsuranceCompanyList(List<InsuranceCompany> insuranceCompanyList)
    {
        this.insuranceCompanyList = insuranceCompanyList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("companyId", getCompanyId())
            .append("personName", getPersonName())
            .append("personPhone", getPersonPhone())
            .append("personSex", getPersonSex())
            .append("sort", getSort())
            .append("state", getState())
            .append("remark", getRemark())
            .append("insuranceCompanyList", getInsuranceCompanyList())
            .toString();
    }

}
