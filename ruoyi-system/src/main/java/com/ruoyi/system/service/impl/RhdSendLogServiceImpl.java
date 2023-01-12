package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RhdSendLogMapper;
import com.ruoyi.system.domain.RhdSendLog;
import com.ruoyi.system.service.IRhdSendLogService;
import com.ruoyi.common.core.text.Convert;

/**
 * 发信管理Service业务层处理
 * 
 * @author wch
 * @date 2023-01-12
 */
@Service
public class RhdSendLogServiceImpl implements IRhdSendLogService 
{
    @Autowired
    private RhdSendLogMapper rhdSendLogMapper;

    /**
     * 查询发信管理
     * 
     * @param id 发信管理主键
     * @return 发信管理
     */
    @Override
    public RhdSendLog selectRhdSendLogById(Long id)
    {
        return rhdSendLogMapper.selectRhdSendLogById(id);
    }

    /**
     * 查询发信管理列表
     * 
     * @param rhdSendLog 发信管理
     * @return 发信管理
     */
    @Override
    public List<RhdSendLog> selectRhdSendLogList(RhdSendLog rhdSendLog)
    {
        return rhdSendLogMapper.selectRhdSendLogList(rhdSendLog);
    }

    /**
     * 新增发信管理
     * 
     * @param rhdSendLog 发信管理
     * @return 结果
     */
    @Override
    public int insertRhdSendLog(RhdSendLog rhdSendLog)
    {
        rhdSendLog.setCreateTime(DateUtils.getNowDate());
        return rhdSendLogMapper.insertRhdSendLog(rhdSendLog);
    }

    /**
     * 修改发信管理
     * 
     * @param rhdSendLog 发信管理
     * @return 结果
     */
    @Override
    public int updateRhdSendLog(RhdSendLog rhdSendLog)
    {
        rhdSendLog.setUpdateTime(DateUtils.getNowDate());
        return rhdSendLogMapper.updateRhdSendLog(rhdSendLog);
    }

    /**
     * 批量删除发信管理
     * 
     * @param ids 需要删除的发信管理主键
     * @return 结果
     */
    @Override
    public int deleteRhdSendLogByIds(String ids)
    {
        return rhdSendLogMapper.deleteRhdSendLogByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除发信管理信息
     * 
     * @param id 发信管理主键
     * @return 结果
     */
    @Override
    public int deleteRhdSendLogById(Long id)
    {
        return rhdSendLogMapper.deleteRhdSendLogById(id);
    }
}
