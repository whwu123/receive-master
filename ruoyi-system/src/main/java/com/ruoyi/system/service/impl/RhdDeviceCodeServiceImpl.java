package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RhdDeviceCodeMapper;
import com.ruoyi.system.domain.RhdDeviceCode;
import com.ruoyi.system.service.IRhdDeviceCodeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 设备列表Service业务层处理
 * 
 * @author wch
 * @date 2022-12-29
 */
@Service
public class RhdDeviceCodeServiceImpl implements IRhdDeviceCodeService 
{
    @Autowired
    private RhdDeviceCodeMapper rhdDeviceCodeMapper;

    /**
     * 查询设备列表
     * 
     * @param id 设备列表主键
     * @return 设备列表
     */
    @Override
    public RhdDeviceCode selectRhdDeviceCodeById(Long id)
    {
        return rhdDeviceCodeMapper.selectRhdDeviceCodeById(id);
    }

    /**
     * 查询设备列表列表
     * 
     * @param rhdDeviceCode 设备列表
     * @return 设备列表
     */
    @Override
    public List<RhdDeviceCode> selectRhdDeviceCodeList(RhdDeviceCode rhdDeviceCode)
    {
        return rhdDeviceCodeMapper.selectRhdDeviceCodeList(rhdDeviceCode);
    }

    /**
     * 新增设备列表
     * 
     * @param rhdDeviceCode 设备列表
     * @return 结果
     */
    @Override
    public int insertRhdDeviceCode(RhdDeviceCode rhdDeviceCode)
    {
        rhdDeviceCode.setCreateTime(DateUtils.getNowDate());
        return rhdDeviceCodeMapper.insertRhdDeviceCode(rhdDeviceCode);
    }

    /**
     * 修改设备列表
     * 
     * @param rhdDeviceCode 设备列表
     * @return 结果
     */
    @Override
    public int updateRhdDeviceCode(RhdDeviceCode rhdDeviceCode)
    {
        rhdDeviceCode.setUpdateTime(DateUtils.getNowDate());
        return rhdDeviceCodeMapper.updateRhdDeviceCode(rhdDeviceCode);
    }

    /**
     * 批量删除设备列表
     * 
     * @param ids 需要删除的设备列表主键
     * @return 结果
     */
    @Override
    public int deleteRhdDeviceCodeByIds(String ids)
    {
        return rhdDeviceCodeMapper.deleteRhdDeviceCodeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除设备列表信息
     * 
     * @param id 设备列表主键
     * @return 结果
     */
    @Override
    public int deleteRhdDeviceCodeById(Long id)
    {
        return rhdDeviceCodeMapper.deleteRhdDeviceCodeById(id);
    }
}
