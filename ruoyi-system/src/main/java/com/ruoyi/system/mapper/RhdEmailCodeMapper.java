package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.RhdEmailCode;

/**
 * 邮箱验证码Mapper接口
 * 
 * @author ruoyi
 * @date 2022-12-22
 */
public interface RhdEmailCodeMapper 
{
    /**
     * 查询邮箱验证码
     * 
     * @param id 邮箱验证码主键
     * @return 邮箱验证码
     */
    public RhdEmailCode selectRhdEmailCodeById(Long id);
    /**
     * 根据邮箱地址和验证码检验合法性
     */
    public RhdEmailCode checkRhdEmailCode(RhdEmailCode rhdEmailCode);
    /**
     * 查询邮箱验证码列表
     * 
     * @param rhdEmailCode 邮箱验证码
     * @return 邮箱验证码集合
     */
    public List<RhdEmailCode> selectRhdEmailCodeList(RhdEmailCode rhdEmailCode);

    /**
     * 新增邮箱验证码
     * 
     * @param rhdEmailCode 邮箱验证码
     * @return 结果
     */
    public int insertRhdEmailCode(RhdEmailCode rhdEmailCode);

    /**
     * 修改邮箱验证码
     * 
     * @param rhdEmailCode 邮箱验证码
     * @return 结果
     */
    public int updateRhdEmailCode(RhdEmailCode rhdEmailCode);

    /**
     * 删除邮箱验证码
     * 
     * @param id 邮箱验证码主键
     * @return 结果
     */
    public int deleteRhdEmailCodeById(Long id);

    /**
     * 批量删除邮箱验证码
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRhdEmailCodeByIds(String[] ids);
}
