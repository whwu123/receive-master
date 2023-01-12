package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RhdUserinfoNettyMapper;
import com.ruoyi.system.domain.RhdUserinfoNetty;
import com.ruoyi.system.service.IRhdUserinfoNettyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 用户信息Service业务层处理
 * 
 * @author wch
 * @date 2023-01-10
 */
@Service
public class RhdUserinfoNettyServiceImpl implements IRhdUserinfoNettyService 
{
    @Autowired
    private RhdUserinfoNettyMapper rhdUserinfoNettyMapper;

    /**
     * 查询用户信息
     * 
     * @param id 用户信息主键
     * @return 用户信息
     */
    @Override
    public RhdUserinfoNetty selectRhdUserinfoNettyById(Long id)
    {
        return rhdUserinfoNettyMapper.selectRhdUserinfoNettyById(id);
    }

    @Override
    public RhdUserinfoNetty selectRhdUserinfoNettyByDeviceCode(String deviceCode) {
        return rhdUserinfoNettyMapper.selectRhdUserinfoNettyByDeviceCode(deviceCode);
    }

    /**
     * 查询用户信息列表
     * 
     * @param rhdUserinfoNetty 用户信息
     * @return 用户信息
     */
    @Override
    public List<RhdUserinfoNetty> selectRhdUserinfoNettyList(RhdUserinfoNetty rhdUserinfoNetty)
    {
        return rhdUserinfoNettyMapper.selectRhdUserinfoNettyList(rhdUserinfoNetty);
    }

    /**
     * 新增用户信息
     * 
     * @param rhdUserinfoNetty 用户信息
     * @return 结果
     */
    @Override
    public int insertRhdUserinfoNetty(RhdUserinfoNetty rhdUserinfoNetty)
    {
        rhdUserinfoNetty.setCreateTime(DateUtils.getNowDate());
        return rhdUserinfoNettyMapper.insertRhdUserinfoNetty(rhdUserinfoNetty);
    }

    /**
     * 修改用户信息
     * 
     * @param rhdUserinfoNetty 用户信息
     * @return 结果
     */
    @Override
    public int updateRhdUserinfoNetty(RhdUserinfoNetty rhdUserinfoNetty)
    {
        rhdUserinfoNetty.setUpdateTime(DateUtils.getNowDate());
        return rhdUserinfoNettyMapper.updateRhdUserinfoNetty(rhdUserinfoNetty);
    }

    /**
     * 批量删除用户信息
     * 
     * @param ids 需要删除的用户信息主键
     * @return 结果
     */
    @Override
    public int deleteRhdUserinfoNettyByIds(String ids)
    {
        return rhdUserinfoNettyMapper.deleteRhdUserinfoNettyByIds(Convert.toStrArray(ids));
    }

    @Override
    public int deleteRhdUserinfoNettyByDeviceCode(String deviceCode) {
        return rhdUserinfoNettyMapper.deleteRhdUserinfoNettyByDeviceCode(deviceCode);
    }

    /**
     * 删除用户信息信息
     * 
     * @param id 用户信息主键
     * @return 结果
     */
    @Override
    public int deleteRhdUserinfoNettyById(Long id)
    {
        return rhdUserinfoNettyMapper.deleteRhdUserinfoNettyById(id);
    }
}
