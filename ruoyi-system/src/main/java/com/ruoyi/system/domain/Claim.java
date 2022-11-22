package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.annotation.Excels;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excel.Type;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 信息管理对象 claim
 * 
 * @author wuchunhui
 * @date 2022-05-07
 */
public class Claim extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 排序 */

    private Long sort;



    /** 城市ID */
    private Long cityId;

    /** 城市名称 */
    private String cityName;

    /** 区县ID */
    private Long areaId;

    /** 区县名称 */
    @Excel(name = "区县名称")
    private String areaName;

    /** 学校ID */
    private Long schoolId;

    /** 学校名称 */
    @Excel(name = "学校名称")
    private String schoolName;

    /** 年级ID */
    private String schoolGrade;

    /** 年级名称 */
    @Excel(name = "年级名称")
    private String schoolGradeName;

    /** 班级ID */
    private Long schoolClass;

    /** 班级名称 */
    @Excel(name = "班级名称")
    private String schoolClassName;

    /** 学生身份证 */
    @Excel(name = "学生身份证")
    private String stuCard;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String stuName;

    /** 学生性别 */
    @Excel(name = "学生性别" , readConverterExp = "1=女,0=男")
    private Long stuSex;

    /** 家长姓名 */
    @Excel(name = "家长姓名")
    private String parentsName;

    /** 家长身份证 */
    @Excel(name = "家长身份证")
    private String parentsCard;

    /** 家长电话 */
    @Excel(name = "家长电话")
    private String parentsCall;

    /** 缴费金额 */
    @Excel(name = "缴费金额")
    private Long payMoney;

    /** 支付流水号 */
    @Excel(name = "支付流水号")
    private String paySerial;

    /** 理赔类型 */
    @Excel(name = "理赔类型" ,readConverterExp = "0=暂无,1=学生平安保险,2=交通意外、重大疾病险,3=监护人责任险")
    private Long claimType;

    /** 理赔金额 */
    @Excel(name = "理赔金额")
    private Long claimMoney;


    private Long claimPersonId;
    /** 公司对象 */
    @Excels({
            @Excel(name = "理赔承保公司", targetAttr = "insuranceCompany.companyName", type = Type.EXPORT),
            @Excel(name = "理赔负责人名称", targetAttr = "personName", type = Type.EXPORT),
            @Excel(name = "理赔负责人电话号码", targetAttr = "personPhone", type = Type.EXPORT)

    })
    private InsuranceCompanyPerson insuranceCompanyPerson;

    /** 理赔进展情况 */
    @Excel(name = "理赔进展情况" ,readConverterExp = "1=待分发,2=进展中,3=已完成")
    private Long evolevState;

    /** 理赔完成时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "理赔完成时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date finishTime;
    /** 状态 */
    @Excel(name = "状态" ,readConverterExp = "1=失效,0=正常")
    private Long state;

    public InsuranceCompanyPerson getInsuranceCompanyPerson() {
        return insuranceCompanyPerson;
    }

    public void setInsuranceCompanyPerson(InsuranceCompanyPerson insuranceCompanyPerson) {
        this.insuranceCompanyPerson = insuranceCompanyPerson;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setSort(Long sort) 
    {
        this.sort = sort;
    }

    public Long getSort() 
    {
        return sort;
    }
    public void setState(Long state) 
    {
        this.state = state;
    }

    public Long getState() 
    {
        return state;
    }
    public void setCityId(Long cityId) 
    {
        this.cityId = cityId;
    }

    public Long getCityId() 
    {
        return cityId;
    }
    public void setCityName(String cityName) 
    {
        this.cityName = cityName;
    }

    public String getCityName() 
    {
        return cityName;
    }
    public void setAreaId(Long areaId) 
    {
        this.areaId = areaId;
    }

    public Long getAreaId() 
    {
        return areaId;
    }
    public void setAreaName(String areaName) 
    {
        this.areaName = areaName;
    }

    public String getAreaName() 
    {
        return areaName;
    }
    public void setSchoolId(Long schoolId) 
    {
        this.schoolId = schoolId;
    }

    public Long getSchoolId() 
    {
        return schoolId;
    }
    public void setSchoolName(String schoolName) 
    {
        this.schoolName = schoolName;
    }

    public String getSchoolName() 
    {
        return schoolName;
    }
    public void setSchoolGrade(String schoolGrade) 
    {
        this.schoolGrade = schoolGrade;
    }

    public String getSchoolGrade() 
    {
        return schoolGrade;
    }
    public void setSchoolGradeName(String schoolGradeName) 
    {
        this.schoolGradeName = schoolGradeName;
    }

    public String getSchoolGradeName() 
    {
        return schoolGradeName;
    }
    public void setSchoolClass(Long schoolClass) 
    {
        this.schoolClass = schoolClass;
    }

    public Long getSchoolClass() 
    {
        return schoolClass;
    }
    public void setSchoolClassName(String schoolClassName) 
    {
        this.schoolClassName = schoolClassName;
    }

    public String getSchoolClassName() 
    {
        return schoolClassName;
    }
    public void setStuCard(String stuCard) 
    {
        this.stuCard = stuCard;
    }

    public String getStuCard() 
    {
        return stuCard;
    }
    public void setStuName(String stuName) 
    {
        this.stuName = stuName;
    }

    public String getStuName() 
    {
        return stuName;
    }
    public void setStuSex(Long stuSex) 
    {
        this.stuSex = stuSex;
    }

    public Long getStuSex() 
    {
        return stuSex;
    }
    public void setParentsName(String parentsName) 
    {
        this.parentsName = parentsName;
    }

    public String getParentsName() 
    {
        return parentsName;
    }
    public void setParentsCard(String parentsCard) 
    {
        this.parentsCard = parentsCard;
    }

    public String getParentsCard() 
    {
        return parentsCard;
    }
    public void setParentsCall(String parentsCall) 
    {
        this.parentsCall = parentsCall;
    }

    public String getParentsCall() 
    {
        return parentsCall;
    }
    public void setPayMoney(Long payMoney) 
    {
        this.payMoney = payMoney;
    }

    public Long getPayMoney() 
    {
        return payMoney;
    }
    public void setPaySerial(String paySerial) 
    {
        this.paySerial = paySerial;
    }

    public String getPaySerial() 
    {
        return paySerial;
    }
    public void setClaimType(Long claimType) 
    {
        this.claimType = claimType;
    }

    public Long getClaimType() 
    {
        return claimType;
    }
    public void setClaimMoney(Long claimMoney) 
    {
        this.claimMoney = claimMoney;
    }

    public Long getClaimMoney() 
    {
        return claimMoney;
    }
    public void setClaimPersonId(Long claimPersonId) 
    {
        this.claimPersonId = claimPersonId;
    }

    public Long getClaimPersonId() 
    {
        return claimPersonId;
    }
    public void setEvolevState(Long evolevState) 
    {
        this.evolevState = evolevState;
    }

    public Long getEvolevState() 
    {
        return evolevState;
    }
    public void setFinishTime(Date finishTime) 
    {
        this.finishTime = finishTime;
    }

    public Date getFinishTime() 
    {
        return finishTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("sort", getSort())
            .append("state", getState())
            .append("remark", getRemark())
            .append("cityId", getCityId())
            .append("cityName", getCityName())
            .append("areaId", getAreaId())
            .append("areaName", getAreaName())
            .append("schoolId", getSchoolId())
            .append("schoolName", getSchoolName())
            .append("schoolGrade", getSchoolGrade())
            .append("schoolGradeName", getSchoolGradeName())
            .append("schoolClass", getSchoolClass())
            .append("schoolClassName", getSchoolClassName())
            .append("stuCard", getStuCard())
            .append("stuName", getStuName())
            .append("stuSex", getStuSex())
            .append("parentsName", getParentsName())
            .append("parentsCard", getParentsCard())
            .append("parentsCall", getParentsCall())
            .append("payMoney", getPayMoney())
            .append("paySerial", getPaySerial())
            .append("claimType", getClaimType())
            .append("claimMoney", getClaimMoney())
            .append("claimPersonId", getClaimPersonId())
            .append("evolevState", getEvolevState())
            .append("finishTime", getFinishTime())
            .toString();
    }
}
