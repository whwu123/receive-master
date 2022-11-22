package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.NPersonMapper;
import com.ruoyi.system.domain.NPerson;
import com.ruoyi.system.service.INPersonService;
import com.ruoyi.common.core.text.Convert;

/**
 * 队员管理Service业务层处理
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
@Service
public class NPersonServiceImpl implements INPersonService 
{
    @Autowired
    private NPersonMapper nPersonMapper;

    /**
     * 查询队员管理
     * 
     * @param id 队员管理主键
     * @return 队员管理
     */
    @Override
    public NPerson selectNPersonById(Long id)
    {
        return nPersonMapper.selectNPersonById(id);
    }

    /**
     * 查询队员管理列表
     * 
     * @param nPerson 队员管理
     * @return 队员管理
     */
    @Override
    public List<NPerson> selectNPersonList(NPerson nPerson)
    {
        return nPersonMapper.selectNPersonList(nPerson);
    }

    /**
     * 新增队员管理
     * 
     * @param nPerson 队员管理
     * @return 结果
     */
    @Override
    public int insertNPerson(NPerson nPerson)
    {
        nPerson.setCreateTime(DateUtils.getNowDate());
        return nPersonMapper.insertNPerson(nPerson);
    }

    /**
     * 修改队员管理
     * 
     * @param nPerson 队员管理
     * @return 结果
     */
    @Override
    public int updateNPerson(NPerson nPerson)
    {
        nPerson.setUpdateTime(DateUtils.getNowDate());
        return nPersonMapper.updateNPerson(nPerson);
    }

    /**
     * 批量删除队员管理
     * 
     * @param ids 需要删除的队员管理主键
     * @return 结果
     */
    @Override
    public int deleteNPersonByIds(String ids)
    {
        return nPersonMapper.deleteNPersonByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除队员管理信息
     * 
     * @param id 队员管理主键
     * @return 结果
     */
    @Override
    public int deleteNPersonById(Long id)
    {
        return nPersonMapper.deleteNPersonById(id);
    }
}
