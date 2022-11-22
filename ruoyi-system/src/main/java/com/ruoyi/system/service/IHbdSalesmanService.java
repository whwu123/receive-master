package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.HbdSalesman;

/**
 * 人员管理Service接口
 * 
 * @author wuchunhui
 * @date 2022-05-19
 */
public interface IHbdSalesmanService 
{
    /**
     * 查询人员管理
     * 
     * @param id 人员管理主键
     * @return 人员管理
     */
    public HbdSalesman selectHbdSalesmanById(Long id);

    /**
     * 查询人员管理列表
     * 
     * @param hbdSalesman 人员管理
     * @return 人员管理集合
     */
    public List<HbdSalesman> selectHbdSalesmanList(HbdSalesman hbdSalesman);

    /**
     * 新增人员管理
     * 
     * @param hbdSalesman 人员管理
     * @return 结果
     */
    public int insertHbdSalesman(HbdSalesman hbdSalesman);

    /**
     * 修改人员管理
     * 
     * @param hbdSalesman 人员管理
     * @return 结果
     */
    public int updateHbdSalesman(HbdSalesman hbdSalesman);

    /**
     * 批量删除人员管理
     * 
     * @param ids 需要删除的人员管理主键集合
     * @return 结果
     */
    public int deleteHbdSalesmanByIds(String ids);

    /**
     * 删除人员管理信息
     * 
     * @param id 人员管理主键
     * @return 结果
     */
    public int deleteHbdSalesmanById(Long id);
}
