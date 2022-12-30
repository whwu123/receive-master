package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.RhdDeviceCode;

/**
 * 设备列表Mapper接口
 * 
 * @author wch
 * @date 2022-12-29
 */
public interface RhdDeviceCodeMapper 
{
    /**
     * 查询设备列表
     * 
     * @param id 设备列表主键
     * @return 设备列表
     */
    public RhdDeviceCode selectRhdDeviceCodeById(Long id);

    /**
     * 查询设备列表列表
     * 
     * @param rhdDeviceCode 设备列表
     * @return 设备列表集合
     */
    public List<RhdDeviceCode> selectRhdDeviceCodeList(RhdDeviceCode rhdDeviceCode);

    /**
     * 新增设备列表
     * 
     * @param rhdDeviceCode 设备列表
     * @return 结果
     */
    public int insertRhdDeviceCode(RhdDeviceCode rhdDeviceCode);

    /**
     * 修改设备列表
     * 
     * @param rhdDeviceCode 设备列表
     * @return 结果
     */
    public int updateRhdDeviceCode(RhdDeviceCode rhdDeviceCode);

    /**
     * 删除设备列表
     * 
     * @param id 设备列表主键
     * @return 结果
     */
    public int deleteRhdDeviceCodeById(Long id);

    /**
     * 批量删除设备列表
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRhdDeviceCodeByIds(String[] ids);
}
