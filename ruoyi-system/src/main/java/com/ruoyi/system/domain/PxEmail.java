package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

public class PxEmail extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    private Long id;

    /**
     * 发送者ID
     */
    @Excel(name = "发送者ID")
    private Long sendId;

    /**
     * 收件人ID
     */
    @Excel(name = "收件人ID")
    private Long receiverId;

    /**
     * 收件人邮箱
     */
    @Excel(name = "收件人邮箱")
    private String receiverEmail;

    /**
     * 抄送人id,多个用逗号分隔
     */
    @Excel(name = "抄送人id,多个用逗号分隔")
    private Long ccId;

    /**
     * 抄送人邮箱,多个用逗号分隔
     */
    @Excel(name = "抄送人邮箱,多个用逗号分隔")
    private String ccEmail;

    /**
     * 邮件主题
     */
    @Excel(name = "邮件主题")
    private String subject;

    /**
     * 邮件内容
     */
    @Excel(name = "邮件内容")
    private String content;

    /**
     * 版本号
     */
    @Excel(name = "版本号")
    private String version;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getSendId() {
        return sendId;
    }

    public void setSendId(Long sendId) {
        this.sendId = sendId;
    }

    public Long getReceiverId() {
        return receiverId;
    }

    public void setReceiverId(Long receiverId) {
        this.receiverId = receiverId;
    }

    public String getReceiverEmail() {
        return receiverEmail;
    }

    public void setReceiverEmail(String receiverEmail) {
        this.receiverEmail = receiverEmail;
    }

    public Long getCcId() {
        return ccId;
    }

    public void setCcId(Long ccId) {
        this.ccId = ccId;
    }

    public String getCcEmail() {
        return ccEmail;
    }

    public void setCcEmail(String ccEmail) {
        this.ccEmail = ccEmail;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
