package com.ruoyi.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 专属项目对象 rhd_exclusive_project
 * 
 * @author wch
 * @date 2022-12-30
 */
public class RhdExclusiveProject extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long exclusiveId;

    /** 删除状态 */
    private String delFlag;

    /** 状态 */
    @Excel(name = "状态")
    private String status;

    /** 关键字keyStr 用于短信 */
    private String extend1;

    /** 扩展字段2 */
    private String extend2;

    /** 专属项目名称 */
    @Excel(name = "专属项目名称")
    private String exclusiveName;

    /** 卡商价格 */
    @Excel(name = "卡商价格")
    private BigDecimal exclusivePrice;

    /** 是否公开
     * 1 公开，2 不公开
     * */
    @Excel(name = "是否公开")
    private String isOpen;

    /** 供卡数量 */
    @Excel(name = "供卡数量")
    private Long cardAmount;

    /** 对接码 */
    @Excel(name = "对接码")
    private String dockingCode;

    /** 接入用户 */
    @Excel(name = "接入用户")
    private String accessUser;

    private String deviceCode;

    private Long projectId;

    public String getDeviceCode() {
        return deviceCode;
    }

    public void setDeviceCode(String deviceCode) {
        this.deviceCode = deviceCode;
    }

    public Long getProjectId() {
        return projectId;
    }

    public void setProjectId(Long projectId) {
        this.projectId = projectId;
    }

    public void setExclusiveId(Long exclusiveId)
    {
        this.exclusiveId = exclusiveId;
    }

    public Long getExclusiveId() 
    {
        return exclusiveId;
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
    public void setExclusiveName(String exclusiveName) 
    {
        this.exclusiveName = exclusiveName;
    }

    public String getExclusiveName() 
    {
        return exclusiveName;
    }
    public void setExclusivePrice(BigDecimal exclusivePrice) 
    {
        this.exclusivePrice = exclusivePrice;
    }

    public BigDecimal getExclusivePrice() 
    {
        return exclusivePrice;
    }
    public void setIsOpen(String isOpen) 
    {
        this.isOpen = isOpen;
    }

    public String getIsOpen() 
    {
        return isOpen;
    }
    public void setCardAmount(Long cardAmount) 
    {
        this.cardAmount = cardAmount;
    }

    public Long getCardAmount() 
    {
        return cardAmount;
    }
    public void setDockingCode(String dockingCode) 
    {
        this.dockingCode = dockingCode;
    }

    public String getDockingCode() 
    {
        return dockingCode;
    }
    public void setAccessUser(String accessUser) 
    {
        this.accessUser = accessUser;
    }

    public String getAccessUser() 
    {
        return accessUser;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("exclusiveId", getExclusiveId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .append("delFlag", getDelFlag())
            .append("status", getStatus())
            .append("extend1", getExtend1())
            .append("extend2", getExtend2())
            .append("exclusiveName", getExclusiveName())
            .append("exclusivePrice", getExclusivePrice())
            .append("isOpen", getIsOpen())
            .append("cardAmount", getCardAmount())
            .append("dockingCode", getDockingCode())
            .append("accessUser", getAccessUser())
            .toString();
    }
}
