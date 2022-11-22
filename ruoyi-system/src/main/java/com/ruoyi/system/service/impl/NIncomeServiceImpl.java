package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.system.domain.NIncomeSources;
import com.ruoyi.system.mapper.NIncomeMapper;
import com.ruoyi.system.domain.NIncome;
import com.ruoyi.system.service.INIncomeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 收入管理Service业务层处理
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
@Service
public class NIncomeServiceImpl implements INIncomeService 
{
    @Autowired
    private NIncomeMapper nIncomeMapper;

    /**
     * 查询收入管理
     * 
     * @param id 收入管理主键
     * @return 收入管理
     */
    @Override
    public NIncome selectNIncomeById(Long id)
    {
        return nIncomeMapper.selectNIncomeById(id);
    }

    /**
     * 查询收入管理列表
     * 
     * @param nIncome 收入管理
     * @return 收入管理
     */
    @Override
    public List<NIncome> selectNIncomeList(NIncome nIncome)
    {
        return nIncomeMapper.selectNIncomeList(nIncome);
    }

    /**
     * 新增收入管理
     * 
     * @param nIncome 收入管理
     * @return 结果
     */
    @Transactional
    @Override
    public int insertNIncome(NIncome nIncome)
    {
        nIncome.setCreateTime(DateUtils.getNowDate());
        int rows = nIncomeMapper.insertNIncome(nIncome);
        insertNIncomeSources(nIncome);
        return rows;
    }

    /**
     * 修改收入管理
     * 
     * @param nIncome 收入管理
     * @return 结果
     */
    @Transactional
    @Override
    public int updateNIncome(NIncome nIncome)
    {
        nIncome.setUpdateTime(DateUtils.getNowDate());
        nIncomeMapper.deleteNIncomeSourcesByNiId(nIncome.getId());
        insertNIncomeSources(nIncome);
        return nIncomeMapper.updateNIncome(nIncome);
    }

    /**
     * 批量删除收入管理
     * 
     * @param ids 需要删除的收入管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteNIncomeByIds(String ids)
    {
        nIncomeMapper.deleteNIncomeSourcesByNiIds(Convert.toStrArray(ids));
        return nIncomeMapper.deleteNIncomeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除收入管理信息
     * 
     * @param id 收入管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteNIncomeById(Long id)
    {
        nIncomeMapper.deleteNIncomeSourcesByNiId(id);
        return nIncomeMapper.deleteNIncomeById(id);
    }

    /**
     * 新增${subTable.functionName}信息
     * 
     * @param nIncome 收入管理对象
     */
    public void insertNIncomeSources(NIncome nIncome)
    {
        List<NIncomeSources> nIncomeSourcesList = nIncome.getNIncomeSourcesList();
        Long id = nIncome.getId();
        if (StringUtils.isNotNull(nIncomeSourcesList))
        {
            List<NIncomeSources> list = new ArrayList<NIncomeSources>();
            for (NIncomeSources nIncomeSources : nIncomeSourcesList)
            {
                nIncomeSources.setNiId(id);
                nIncomeSources.setCreateTime(DateUtils.getNowDate());
                list.add(nIncomeSources);
            }
            if (list.size() > 0)
            {
                nIncomeMapper.batchNIncomeSources(list);
            }
        }
    }
    public void updateNIncomeSources(NIncome nIncome)
    {
        List<NIncomeSources> nIncomeSourcesList = nIncome.getNIncomeSourcesList();
        Long id = nIncome.getId();
        if (StringUtils.isNotNull(nIncomeSourcesList))
        {
            List<NIncomeSources> list = new ArrayList<NIncomeSources>();
            for (NIncomeSources nIncomeSources : nIncomeSourcesList)
            {
                nIncomeSources.setNiId(id);
                nIncomeSources.setUpdateTime(DateUtils.getNowDate());
                list.add(nIncomeSources);
            }
            if (list.size() > 0)
            {
                nIncomeMapper.batchNIncomeSources(list);
            }
        }
    }
}
