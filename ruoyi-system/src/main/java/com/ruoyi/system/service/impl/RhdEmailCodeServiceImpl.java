package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.core.domain.R;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RhdEmailCodeMapper;
import com.ruoyi.system.domain.RhdEmailCode;
import com.ruoyi.system.service.IRhdEmailCodeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 邮箱验证码Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-12-22
 */
@Service
public class RhdEmailCodeServiceImpl implements IRhdEmailCodeService 
{
    @Autowired
    private RhdEmailCodeMapper rhdEmailCodeMapper;

    /**
     * 查询邮箱验证码
     * 
     * @param id 邮箱验证码主键
     * @return 邮箱验证码
     */
    @Override
    public RhdEmailCode selectRhdEmailCodeById(Long id)
    {
        return rhdEmailCodeMapper.selectRhdEmailCodeById(id);
    }

    @Override
    public RhdEmailCode checkRhdEmailCode(String emailAddress, String code) {
        RhdEmailCode rhdEmailCode = new RhdEmailCode();
        rhdEmailCode.setEmailCode(code);
        rhdEmailCode.setEmailAddress(emailAddress);
        rhdEmailCode.setStatus("0");
        return rhdEmailCodeMapper.checkRhdEmailCode(rhdEmailCode);
    }

    /**
     * 查询邮箱验证码列表
     * 
     * @param rhdEmailCode 邮箱验证码
     * @return 邮箱验证码
     */
    @Override
    public List<RhdEmailCode> selectRhdEmailCodeList(RhdEmailCode rhdEmailCode)
    {
        return rhdEmailCodeMapper.selectRhdEmailCodeList(rhdEmailCode);
    }

    /**
     * 新增邮箱验证码
     * 
     * @param rhdEmailCode 邮箱验证码
     * @return 结果
     */
    @Override
    public int insertRhdEmailCode(RhdEmailCode rhdEmailCode)
    {
        rhdEmailCode.setCreateTime(DateUtils.getNowDate());
        return rhdEmailCodeMapper.insertRhdEmailCode(rhdEmailCode);
    }

    /**
     * 修改邮箱验证码
     * 
     * @param rhdEmailCode 邮箱验证码
     * @return 结果
     */
    @Override
    public int updateRhdEmailCode(RhdEmailCode rhdEmailCode)
    {
        rhdEmailCode.setUpdateTime(DateUtils.getNowDate());
        return rhdEmailCodeMapper.updateRhdEmailCode(rhdEmailCode);
    }

    /**
     * 批量删除邮箱验证码
     * 
     * @param ids 需要删除的邮箱验证码主键
     * @return 结果
     */
    @Override
    public int deleteRhdEmailCodeByIds(String ids)
    {
        return rhdEmailCodeMapper.deleteRhdEmailCodeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除邮箱验证码信息
     * 
     * @param id 邮箱验证码主键
     * @return 结果
     */
    @Override
    public int deleteRhdEmailCodeById(Long id)
    {
        return rhdEmailCodeMapper.deleteRhdEmailCodeById(id);
    }
}
