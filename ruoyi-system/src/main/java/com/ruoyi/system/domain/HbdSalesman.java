package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 人员管理对象 hbd_salesman
 * 
 * @author wuchunhui
 * @date 2022-05-19
 */
public class HbdSalesman extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String sName;

    /** 身份证 */
    @Excel(name = "身份证")
    private String sCard;

    /** 性别 */
    //@Excel(name = "性别")
    private Long sSex;

    /** 状态 */
   // @Excel(name = "状态")
    private Long state;

    /** 银行卡号 */
    @Excel(name = "银行卡号")
    private String bankCard;

    /** 开户行 */
    @Excel(name = "开户行")
    private String openingBank;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /** 联系方式 */
    @Excel(name = "联系方式")
    private String phone;

    /** 卡内余额 */
    @Excel(name = "卡内余额")
    private Double balance;

    /** 推荐人 */
    @Excel(name = "推荐人")
    private String referrer;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setsName(String sName) 
    {
        this.sName = sName;
    }

    public String getsName() 
    {
        return sName;
    }
    public void setsCard(String sCard) 
    {
        this.sCard = sCard;
    }

    public String getsCard() 
    {
        return sCard;
    }
    public void setsSex(Long sSex) 
    {
        this.sSex = sSex;
    }

    public Long getsSex() 
    {
        return sSex;
    }
    public void setState(Long state) 
    {
        this.state = state;
    }

    public Long getState() 
    {
        return state;
    }
    public void setBankCard(String bankCard) 
    {
        this.bankCard = bankCard;
    }

    public String getBankCard() 
    {
        return bankCard;
    }
    public void setOpeningBank(String openingBank) 
    {
        this.openingBank = openingBank;
    }

    public String getOpeningBank() 
    {
        return openingBank;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setBalance(Double balance) 
    {
        this.balance = balance;
    }

    public Double getBalance() 
    {
        return balance;
    }
    public void setReferrer(String referrer) 
    {
        this.referrer = referrer;
    }

    public String getReferrer() 
    {
        return referrer;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("sName", getsName())
            .append("sCard", getsCard())
            .append("sSex", getsSex())
            .append("state", getState())
            .append("remark", getRemark())
            .append("bankCard", getBankCard())
            .append("openingBank", getOpeningBank())
            .append("address", getAddress())
            .append("phone", getPhone())
            .append("balance", getBalance())
            .append("referrer", getReferrer())
            .toString();
    }
}
