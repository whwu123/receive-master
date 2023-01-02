package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RhdMessageDataMapper;
import com.ruoyi.system.domain.RhdMessageData;
import com.ruoyi.system.service.IRhdMessageDataService;
import com.ruoyi.common.core.text.Convert;

/**
 * 信息管理Service业务层处理
 * 
 * @author wch
 * @date 2023-01-02
 */
@Service
public class RhdMessageDataServiceImpl implements IRhdMessageDataService 
{
    @Autowired
    private RhdMessageDataMapper rhdMessageDataMapper;

    /**
     * 查询信息管理
     * 
     * @param messageId 信息管理主键
     * @return 信息管理
     */
    @Override
    public RhdMessageData selectRhdMessageDataByMessageId(Long messageId)
    {
        return rhdMessageDataMapper.selectRhdMessageDataByMessageId(messageId);
    }

    /**
     * 查询信息管理列表
     * 
     * @param rhdMessageData 信息管理
     * @return 信息管理
     */
    @Override
    public List<RhdMessageData> selectRhdMessageDataList(RhdMessageData rhdMessageData)
    {
        return rhdMessageDataMapper.selectRhdMessageDataList(rhdMessageData);
    }

    /**
     * 新增信息管理
     * 
     * @param rhdMessageData 信息管理
     * @return 结果
     */
    @Override
    public int insertRhdMessageData(RhdMessageData rhdMessageData)
    {
        rhdMessageData.setCreateTime(DateUtils.getNowDate());
        return rhdMessageDataMapper.insertRhdMessageData(rhdMessageData);
    }

    /**
     * 修改信息管理
     * 
     * @param rhdMessageData 信息管理
     * @return 结果
     */
    @Override
    public int updateRhdMessageData(RhdMessageData rhdMessageData)
    {
        rhdMessageData.setUpdateTime(DateUtils.getNowDate());
        return rhdMessageDataMapper.updateRhdMessageData(rhdMessageData);
    }

    /**
     * 批量删除信息管理
     * 
     * @param messageIds 需要删除的信息管理主键
     * @return 结果
     */
    @Override
    public int deleteRhdMessageDataByMessageIds(String messageIds)
    {
        return rhdMessageDataMapper.deleteRhdMessageDataByMessageIds(Convert.toStrArray(messageIds));
    }

    /**
     * 删除信息管理信息
     * 
     * @param messageId 信息管理主键
     * @return 结果
     */
    @Override
    public int deleteRhdMessageDataByMessageId(Long messageId)
    {
        return rhdMessageDataMapper.deleteRhdMessageDataByMessageId(messageId);
    }
}
