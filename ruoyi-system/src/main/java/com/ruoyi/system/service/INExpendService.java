package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.NExpend;

/**
 * 支出管理Service接口
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
public interface INExpendService 
{
    /**
     * 查询支出管理
     * 
     * @param id 支出管理主键
     * @return 支出管理
     */
    public NExpend selectNExpendById(Long id);

    /**
     * 查询支出管理列表
     * 
     * @param nExpend 支出管理
     * @return 支出管理集合
     */
    public List<NExpend> selectNExpendList(NExpend nExpend);

    /**
     * 新增支出管理
     * 
     * @param nExpend 支出管理
     * @return 结果
     */
    public int insertNExpend(NExpend nExpend);

    /**
     * 修改支出管理
     * 
     * @param nExpend 支出管理
     * @return 结果
     */
    public int updateNExpend(NExpend nExpend);

    /**
     * 批量删除支出管理
     * 
     * @param ids 需要删除的支出管理主键集合
     * @return 结果
     */
    public int deleteNExpendByIds(String ids);

    /**
     * 删除支出管理信息
     * 
     * @param id 支出管理主键
     * @return 结果
     */
    public int deleteNExpendById(Long id);
}
