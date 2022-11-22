package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 队员管理对象 n_person
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
public class NPerson extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 名称 */
    @Excel(name = "名称")
    private String nName;

    /** 年龄 */
    @Excel(name = "年龄")
    private String nAge;

    /** 联系方式 */
    @Excel(name = "联系方式")
    private String nPhone;

    /** 身穿号码 */
    @Excel(name = "身穿号码")
    private Long nNumber;

    /** 性别 */
    @Excel(name = "性别")
    private Long nSex;

    /** 体重 */
    @Excel(name = "体重")
    private Long nWeight;

    /** 身高 */
    @Excel(name = "身高")
    private Long nHeight;

    /** 状态 */
    @Excel(name = "状态")
    private Long nStatus;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setnName(String nName) 
    {
        this.nName = nName;
    }

    public String getnName() 
    {
        return nName;
    }
    public void setnAge(String nAge) 
    {
        this.nAge = nAge;
    }

    public String getnAge() 
    {
        return nAge;
    }
    public void setnPhone(String nPhone) 
    {
        this.nPhone = nPhone;
    }

    public String getnPhone() 
    {
        return nPhone;
    }
    public void setnNumber(Long nNumber) 
    {
        this.nNumber = nNumber;
    }

    public Long getnNumber() 
    {
        return nNumber;
    }
    public void setnSex(Long nSex) 
    {
        this.nSex = nSex;
    }

    public Long getnSex() 
    {
        return nSex;
    }
    public void setnWeight(Long nWeight) 
    {
        this.nWeight = nWeight;
    }

    public Long getnWeight() 
    {
        return nWeight;
    }
    public void setnHeight(Long nHeight) 
    {
        this.nHeight = nHeight;
    }

    public Long getnHeight() 
    {
        return nHeight;
    }
    public void setnStatus(Long nStatus) 
    {
        this.nStatus = nStatus;
    }

    public Long getnStatus() 
    {
        return nStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("nName", getnName())
            .append("nAge", getnAge())
            .append("nPhone", getnPhone())
            .append("nNumber", getnNumber())
            .append("nSex", getnSex())
            .append("nWeight", getnWeight())
            .append("nHeight", getnHeight())
            .append("nStatus", getnStatus())
            .append("remark", getRemark())
            .toString();
    }
}
