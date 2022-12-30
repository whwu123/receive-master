package com.ruoyi.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 缺卡项目对象 rhd_lack_card_project
 * 
 * @author wch
 * @date 2022-12-30
 */
public class RhdLackCardProject extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long lackId;

    /** 删除状态 */
    private String delFlag;

    /** 数据状态 */
    @Excel(name = "数据状态")
    private String status;

    /** 扩展字段1 */
    @Excel(name = "扩展字段1")
    private String extend1;

    /** 扩展字段2 */
    @Excel(name = "扩展字段2")
    private String extend2;

    /** 缺卡项目名称 */
    @Excel(name = "缺卡项目名称")
    private String lackName;

    /** 建议酬劳 */
    @Excel(name = "建议酬劳")
    private BigDecimal advisedPrice;

    /** 号段 */
    @Excel(name = "号段")
    private String numberSegment;

    /** 需求量 */
    @Excel(name = "需求量")
    private Long quantityDemanded;

    public void setLackId(Long lackId) 
    {
        this.lackId = lackId;
    }

    public Long getLackId() 
    {
        return lackId;
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
    public void setLackName(String lackName) 
    {
        this.lackName = lackName;
    }

    public String getLackName() 
    {
        return lackName;
    }
    public void setAdvisedPrice(BigDecimal advisedPrice) 
    {
        this.advisedPrice = advisedPrice;
    }

    public BigDecimal getAdvisedPrice() 
    {
        return advisedPrice;
    }
    public void setNumberSegment(String numberSegment) 
    {
        this.numberSegment = numberSegment;
    }

    public String getNumberSegment() 
    {
        return numberSegment;
    }
    public void setQuantityDemanded(Long quantityDemanded) 
    {
        this.quantityDemanded = quantityDemanded;
    }

    public Long getQuantityDemanded() 
    {
        return quantityDemanded;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("lackId", getLackId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .append("delFlag", getDelFlag())
            .append("status", getStatus())
            .append("extend1", getExtend1())
            .append("extend2", getExtend2())
            .append("lackName", getLackName())
            .append("advisedPrice", getAdvisedPrice())
            .append("numberSegment", getNumberSegment())
            .append("quantityDemanded", getQuantityDemanded())
            .toString();
    }
}
