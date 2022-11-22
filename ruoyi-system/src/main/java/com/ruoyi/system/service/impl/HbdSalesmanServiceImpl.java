package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.HbdSalesmanMapper;
import com.ruoyi.system.domain.HbdSalesman;
import com.ruoyi.system.service.IHbdSalesmanService;
import com.ruoyi.common.core.text.Convert;

/**
 * 人员管理Service业务层处理
 * 
 * @author wuchunhui
 * @date 2022-05-19
 */
@Service
public class HbdSalesmanServiceImpl implements IHbdSalesmanService 
{
    @Autowired
    private HbdSalesmanMapper hbdSalesmanMapper;

    /**
     * 查询人员管理
     * 
     * @param id 人员管理主键
     * @return 人员管理
     */
    @Override
    public HbdSalesman selectHbdSalesmanById(Long id)
    {
        return hbdSalesmanMapper.selectHbdSalesmanById(id);
    }

    /**
     * 查询人员管理列表
     * 
     * @param hbdSalesman 人员管理
     * @return 人员管理
     */
    @Override
    public List<HbdSalesman> selectHbdSalesmanList(HbdSalesman hbdSalesman)
    {
        return hbdSalesmanMapper.selectHbdSalesmanList(hbdSalesman);
    }

    /**
     * 新增人员管理
     * 
     * @param hbdSalesman 人员管理
     * @return 结果
     */
    @Override
    public int insertHbdSalesman(HbdSalesman hbdSalesman)
    {
        hbdSalesman.setCreateTime(DateUtils.getNowDate());
        return hbdSalesmanMapper.insertHbdSalesman(hbdSalesman);
    }

    /**
     * 修改人员管理
     * 
     * @param hbdSalesman 人员管理
     * @return 结果
     */
    @Override
    public int updateHbdSalesman(HbdSalesman hbdSalesman)
    {
        hbdSalesman.setUpdateTime(DateUtils.getNowDate());
        return hbdSalesmanMapper.updateHbdSalesman(hbdSalesman);
    }

    /**
     * 批量删除人员管理
     * 
     * @param ids 需要删除的人员管理主键
     * @return 结果
     */
    @Override
    public int deleteHbdSalesmanByIds(String ids)
    {
        return hbdSalesmanMapper.deleteHbdSalesmanByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除人员管理信息
     * 
     * @param id 人员管理主键
     * @return 结果
     */
    @Override
    public int deleteHbdSalesmanById(Long id)
    {
        return hbdSalesmanMapper.deleteHbdSalesmanById(id);
    }
}
