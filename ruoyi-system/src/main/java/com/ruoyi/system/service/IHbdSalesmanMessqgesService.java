package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.HbdSalesmanMessqges;

/**
 * 信息管理Service接口
 *
 * @author wuchunhui
 * @date 2022-05-20
 */
public interface IHbdSalesmanMessqgesService
{
    /**
     * 查询信息管理
     *
     * @param id 信息管理主键
     * @return 信息管理
     */
    public HbdSalesmanMessqges selectHbdSalesmanMessqgesById(Long id);

    /**
     * 查询信息管理列表
     *
     * @param hbdSalesmanMessqges 信息管理
     * @return 信息管理集合
     */
    public List<HbdSalesmanMessqges> selectHbdSalesmanMessqgesList(HbdSalesmanMessqges hbdSalesmanMessqges);

    /**
     * 新增信息管理
     *
     * @param hbdSalesmanMessqges 信息管理
     * @return 结果
     */
    public int insertHbdSalesmanMessqges(HbdSalesmanMessqges hbdSalesmanMessqges);

    /**
     * 修改信息管理
     *
     * @param hbdSalesmanMessqges 信息管理
     * @return 结果
     */
    public int updateHbdSalesmanMessqges(HbdSalesmanMessqges hbdSalesmanMessqges);

    /**
     * 批量删除信息管理
     *
     * @param ids 需要删除的信息管理主键集合
     * @return 结果
     */
    public int deleteHbdSalesmanMessqgesByIds(String ids);

    /**
     * 删除信息管理信息
     *
     * @param id 信息管理主键
     * @return 结果
     */
    public int deleteHbdSalesmanMessqgesById(Long id);
}
