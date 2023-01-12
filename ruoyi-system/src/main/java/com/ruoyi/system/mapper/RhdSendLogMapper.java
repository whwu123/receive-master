package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.RhdSendLog;

/**
 * 发信管理Mapper接口
 * 
 * @author wch
 * @date 2023-01-12
 */
public interface RhdSendLogMapper 
{
    /**
     * 查询发信管理
     * 
     * @param id 发信管理主键
     * @return 发信管理
     */
    public RhdSendLog selectRhdSendLogById(Long id);

    /**
     * 查询发信管理列表
     * 
     * @param rhdSendLog 发信管理
     * @return 发信管理集合
     */
    public List<RhdSendLog> selectRhdSendLogList(RhdSendLog rhdSendLog);

    /**
     * 新增发信管理
     * 
     * @param rhdSendLog 发信管理
     * @return 结果
     */
    public int insertRhdSendLog(RhdSendLog rhdSendLog);

    /**
     * 修改发信管理
     * 
     * @param rhdSendLog 发信管理
     * @return 结果
     */
    public int updateRhdSendLog(RhdSendLog rhdSendLog);

    /**
     * 删除发信管理
     * 
     * @param id 发信管理主键
     * @return 结果
     */
    public int deleteRhdSendLogById(Long id);

    /**
     * 批量删除发信管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRhdSendLogByIds(String[] ids);
}
