package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学校承保公司对象 school_company
 * 
 * @author ruoyi
 * @date 2022-10-24
 */
public class SchoolCompany extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;
    /** 区域ID */
    @Excel(name = "区县名称" ,readConverterExp = "440=市辖区,430=沅陵县,428=鹤城区")
    private Long countyDeptId;
    /** 学校名称 */
    @Excel(name = "学校名称")
    private String schoolName;

    /** 承保公司ID */
    private Long insuranceCompanyId;

    /** 承保公司名称 */
    @Excel(name = "承保公司名称" )
    private String insuranceCompanyName;

    /** 承保公司联系人ID */
    private Long insuranceCompanyPersonId;


    /** 承保公司联系人 */
    @Excel(name = "联系人名称")
    private String insuranceCompanyPerson;

    /** 承保公司联系人电话 */
    @Excel(name = "联系人电话")
    private String insuranceCompanyPhone;

    /** 承保公司联系人性别 */
    @Excel(name = "联系人性别", readConverterExp = "1=女,0=男")
    private Integer insuranceCompanySex;

    /** 学校ID */
    //@Excel(name = "学校ID")
    private Long schoolId;


    /** 收费标记 */
    @Excel(name = "收费标记")
    private String chargeCode;

    /** 险种类型 */
    @Excel(name = "险种类型",readConverterExp = "01=学生平安保险,08=交通意外、重大疾病险,05=监护人责任险,14=校外活动险")
    private String riskCode;

    /** 状态 */
    @Excel(name = "状态" ,readConverterExp = "1=失效,0=正常")
    private Long state;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCountyDeptId() {
        return countyDeptId;
    }

    public void setCountyDeptId(Long countyDeptId) {
        this.countyDeptId = countyDeptId;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public Long getInsuranceCompanyId() {
        return insuranceCompanyId;
    }

    public void setInsuranceCompanyId(Long insuranceCompanyId) {
        this.insuranceCompanyId = insuranceCompanyId;
    }

    public String getInsuranceCompanyName() {
        return insuranceCompanyName;
    }

    public void setInsuranceCompanyName(String insuranceCompanyName) {
        this.insuranceCompanyName = insuranceCompanyName;
    }

    public Long getInsuranceCompanyPersonId() {
        return insuranceCompanyPersonId;
    }

    public void setInsuranceCompanyPersonId(Long insuranceCompanyPersonId) {
        this.insuranceCompanyPersonId = insuranceCompanyPersonId;
    }

    public String getInsuranceCompanyPerson() {
        return insuranceCompanyPerson;
    }

    public void setInsuranceCompanyPerson(String insuranceCompanyPerson) {
        this.insuranceCompanyPerson = insuranceCompanyPerson;
    }

    public String getInsuranceCompanyPhone() {
        return insuranceCompanyPhone;
    }

    public void setInsuranceCompanyPhone(String insuranceCompanyPhone) {
        this.insuranceCompanyPhone = insuranceCompanyPhone;
    }

    public Integer getInsuranceCompanySex() {
        return insuranceCompanySex;
    }

    public void setInsuranceCompanySex(Integer insuranceCompanySex) {
        this.insuranceCompanySex = insuranceCompanySex;
    }

    public Long getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Long schoolId) {
        this.schoolId = schoolId;
    }

    public String getChargeCode() {
        return chargeCode;
    }

    public void setChargeCode(String chargeCode) {
        this.chargeCode = chargeCode;
    }

    public String getRiskCode() {
        return riskCode;
    }

    public void setRiskCode(String riskCode) {
        this.riskCode = riskCode;
    }

    public Long getState() {
        return state;
    }

    public void setState(Long state) {
        this.state = state;
    }
}
