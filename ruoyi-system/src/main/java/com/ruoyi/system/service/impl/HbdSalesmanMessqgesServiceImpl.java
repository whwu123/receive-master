package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.HbdSalesmanMessqgesMapper;
import com.ruoyi.system.domain.HbdSalesmanMessqges;
import com.ruoyi.system.service.IHbdSalesmanMessqgesService;
import com.ruoyi.common.core.text.Convert;

/**
 * 信息管理Service业务层处理
 *
 * @author wuchunhui
 * @date 2022-05-20
 */
@Service
public class HbdSalesmanMessqgesServiceImpl implements IHbdSalesmanMessqgesService
{
    @Autowired
    private HbdSalesmanMessqgesMapper hbdSalesmanMessqgesMapper;

    /**
     * 查询信息管理
     *
     * @param id 信息管理主键
     * @return 信息管理
     */
    @Override
    public HbdSalesmanMessqges selectHbdSalesmanMessqgesById(Long id)
    {
        return hbdSalesmanMessqgesMapper.selectHbdSalesmanMessqgesById(id);
    }

    /**
     * 查询信息管理列表
     *
     * @param hbdSalesmanMessqges 信息管理
     * @return 信息管理
     */
    @Override
    public List<HbdSalesmanMessqges> selectHbdSalesmanMessqgesList(HbdSalesmanMessqges hbdSalesmanMessqges)
    {
        return hbdSalesmanMessqgesMapper.selectHbdSalesmanMessqgesList(hbdSalesmanMessqges);
    }

    /**
     * 新增信息管理
     *
     * @param hbdSalesmanMessqges 信息管理
     * @return 结果
     */
    @Override
    public int insertHbdSalesmanMessqges(HbdSalesmanMessqges hbdSalesmanMessqges)
    {
        // hbdSalesmanMessqges.setCreateTime(DateUtils.getNowDate());
        return hbdSalesmanMessqgesMapper.insertHbdSalesmanMessqges(hbdSalesmanMessqges);
    }

    /**
     * 修改信息管理
     *
     * @param hbdSalesmanMessqges 信息管理
     * @return 结果
     */
    @Override
    public int updateHbdSalesmanMessqges(HbdSalesmanMessqges hbdSalesmanMessqges)
    {
        hbdSalesmanMessqges.setUpdateTime(DateUtils.getNowDate());
        return hbdSalesmanMessqgesMapper.updateHbdSalesmanMessqges(hbdSalesmanMessqges);
    }

    /**
     * 批量删除信息管理
     *
     * @param ids 需要删除的信息管理主键
     * @return 结果
     */
    @Override
    public int deleteHbdSalesmanMessqgesByIds(String ids)
    {
        return hbdSalesmanMessqgesMapper.deleteHbdSalesmanMessqgesByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除信息管理信息
     *
     * @param id 信息管理主键
     * @return 结果
     */
    @Override
    public int deleteHbdSalesmanMessqgesById(Long id)
    {
        return hbdSalesmanMessqgesMapper.deleteHbdSalesmanMessqgesById(id);
    }
}
