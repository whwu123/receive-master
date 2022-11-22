package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.NExpendMapper;
import com.ruoyi.system.domain.NExpend;
import com.ruoyi.system.service.INExpendService;
import com.ruoyi.common.core.text.Convert;

/**
 * 支出管理Service业务层处理
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
@Service
public class NExpendServiceImpl implements INExpendService 
{
    @Autowired
    private NExpendMapper nExpendMapper;

    /**
     * 查询支出管理
     * 
     * @param id 支出管理主键
     * @return 支出管理
     */
    @Override
    public NExpend selectNExpendById(Long id)
    {
        return nExpendMapper.selectNExpendById(id);
    }

    /**
     * 查询支出管理列表
     * 
     * @param nExpend 支出管理
     * @return 支出管理
     */
    @Override
    public List<NExpend> selectNExpendList(NExpend nExpend)
    {
        return nExpendMapper.selectNExpendList(nExpend);
    }

    /**
     * 新增支出管理
     * 
     * @param nExpend 支出管理
     * @return 结果
     */
    @Override
    public int insertNExpend(NExpend nExpend)
    {
        nExpend.setCreateTime(DateUtils.getNowDate());
        return nExpendMapper.insertNExpend(nExpend);
    }

    /**
     * 修改支出管理
     * 
     * @param nExpend 支出管理
     * @return 结果
     */
    @Override
    public int updateNExpend(NExpend nExpend)
    {
        nExpend.setUpdateTime(DateUtils.getNowDate());
        return nExpendMapper.updateNExpend(nExpend);
    }

    /**
     * 批量删除支出管理
     * 
     * @param ids 需要删除的支出管理主键
     * @return 结果
     */
    @Override
    public int deleteNExpendByIds(String ids)
    {
        return nExpendMapper.deleteNExpendByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除支出管理信息
     * 
     * @param id 支出管理主键
     * @return 结果
     */
    @Override
    public int deleteNExpendById(Long id)
    {
        return nExpendMapper.deleteNExpendById(id);
    }
}
