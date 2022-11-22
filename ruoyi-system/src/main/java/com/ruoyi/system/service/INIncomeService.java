package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.NIncome;

/**
 * 收入管理Service接口
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
public interface INIncomeService 
{
    /**
     * 查询收入管理
     * 
     * @param id 收入管理主键
     * @return 收入管理
     */
    public NIncome selectNIncomeById(Long id);

    /**
     * 查询收入管理列表
     * 
     * @param nIncome 收入管理
     * @return 收入管理集合
     */
    public List<NIncome> selectNIncomeList(NIncome nIncome);

    /**
     * 新增收入管理
     * 
     * @param nIncome 收入管理
     * @return 结果
     */
    public int insertNIncome(NIncome nIncome);

    /**
     * 修改收入管理
     * 
     * @param nIncome 收入管理
     * @return 结果
     */
    public int updateNIncome(NIncome nIncome);

    /**
     * 批量删除收入管理
     * 
     * @param ids 需要删除的收入管理主键集合
     * @return 结果
     */
    public int deleteNIncomeByIds(String ids);

    /**
     * 删除收入管理信息
     * 
     * @param id 收入管理主键
     * @return 结果
     */
    public int deleteNIncomeById(Long id);
}
