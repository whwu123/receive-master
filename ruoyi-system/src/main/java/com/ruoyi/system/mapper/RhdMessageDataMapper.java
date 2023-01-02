package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.RhdMessageData;

/**
 * 信息管理Mapper接口
 * 
 * @author wch
 * @date 2023-01-02
 */
public interface RhdMessageDataMapper 
{
    /**
     * 查询信息管理
     * 
     * @param messageId 信息管理主键
     * @return 信息管理
     */
    public RhdMessageData selectRhdMessageDataByMessageId(Long messageId);

    /**
     * 查询信息管理列表
     * 
     * @param rhdMessageData 信息管理
     * @return 信息管理集合
     */
    public List<RhdMessageData> selectRhdMessageDataList(RhdMessageData rhdMessageData);

    /**
     * 新增信息管理
     * 
     * @param rhdMessageData 信息管理
     * @return 结果
     */
    public int insertRhdMessageData(RhdMessageData rhdMessageData);

    /**
     * 修改信息管理
     * 
     * @param rhdMessageData 信息管理
     * @return 结果
     */
    public int updateRhdMessageData(RhdMessageData rhdMessageData);

    /**
     * 删除信息管理
     * 
     * @param messageId 信息管理主键
     * @return 结果
     */
    public int deleteRhdMessageDataByMessageId(Long messageId);

    /**
     * 批量删除信息管理
     * 
     * @param messageIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRhdMessageDataByMessageIds(String[] messageIds);
}
