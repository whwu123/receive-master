package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.RhdUserinfoNetty;

/**
 * 用户信息Service接口
 * 
 * @author wch
 * @date 2023-01-10
 */
public interface IRhdUserinfoNettyService 
{
    /**
     * 查询用户信息
     * 
     * @param id 用户信息主键
     * @return 用户信息
     */
    public RhdUserinfoNetty selectRhdUserinfoNettyById(Long id);

    /**
     * 查询用户信息
     *
     * @param deviceCode 设备码
     * @return 用户信息
     */
    public RhdUserinfoNetty selectRhdUserinfoNettyByDeviceCode(String  deviceCode);

    /**
     * 查询用户信息列表
     * 
     * @param rhdUserinfoNetty 用户信息
     * @return 用户信息集合
     */
    public List<RhdUserinfoNetty> selectRhdUserinfoNettyList(RhdUserinfoNetty rhdUserinfoNetty);

    /**
     * 新增用户信息
     * 
     * @param rhdUserinfoNetty 用户信息
     * @return 结果
     */
    public int insertRhdUserinfoNetty(RhdUserinfoNetty rhdUserinfoNetty);

    /**
     * 修改用户信息
     * 
     * @param rhdUserinfoNetty 用户信息
     * @return 结果
     */
    public int updateRhdUserinfoNetty(RhdUserinfoNetty rhdUserinfoNetty);

    /**
     * 批量删除用户信息
     * 
     * @param ids 需要删除的用户信息主键集合
     * @return 结果
     */
    public int deleteRhdUserinfoNettyByIds(String ids);

    /**
     * @param deviceCode 根据设备码进行删除
     * @return 结果
     */
    public int deleteRhdUserinfoNettyByDeviceCode(String deviceCode);

    /**
     * 删除用户信息信息
     * 
     * @param id 用户信息主键
     * @return 结果
     */
    public int deleteRhdUserinfoNettyById(Long id);
}
