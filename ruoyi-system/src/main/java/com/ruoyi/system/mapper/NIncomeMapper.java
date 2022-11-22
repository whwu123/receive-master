package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.NIncome;
import com.ruoyi.system.domain.NIncomeSources;

/**
 * 收入管理Mapper接口
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
public interface NIncomeMapper 
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
     * 删除收入管理
     * 
     * @param id 收入管理主键
     * @return 结果
     */
    public int deleteNIncomeById(Long id);

    /**
     * 批量删除收入管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteNIncomeByIds(String[] ids);

    /**
     * 批量删除${subTable.functionName}
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteNIncomeSourcesByNiIds(String[] ids);
    
    /**
     * 批量新增${subTable.functionName}
     * 
     * @param nIncomeSourcesList ${subTable.functionName}列表
     * @return 结果
     */
    public int batchNIncomeSources(List<NIncomeSources> nIncomeSourcesList);
    

    /**
     * 通过收入管理主键删除${subTable.functionName}信息
     * 
     * @param id 收入管理ID
     * @return 结果
     */
    public int deleteNIncomeSourcesByNiId(Long id);
}
