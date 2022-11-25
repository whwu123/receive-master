package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.RhdProjectList;

/**
 * 查询Service接口
 * 
 * @author wch
 * @date 2022-11-25
 */
public interface IRhdProjectListService 
{
    /**
     * 查询查询
     * 
     * @param projectId 查询主键
     * @return 查询
     */
    public RhdProjectList selectRhdProjectListByProjectId(Long projectId);

    /**
     * 查询查询列表
     * 
     * @param rhdProjectList 查询
     * @return 查询集合
     */
    public List<RhdProjectList> selectRhdProjectListList(RhdProjectList rhdProjectList);

    /**
     * 新增查询
     * 
     * @param rhdProjectList 查询
     * @return 结果
     */
    public int insertRhdProjectList(RhdProjectList rhdProjectList);

    /**
     * 修改查询
     * 
     * @param rhdProjectList 查询
     * @return 结果
     */
    public int updateRhdProjectList(RhdProjectList rhdProjectList);

    /**
     * 批量删除查询
     * 
     * @param projectIds 需要删除的查询主键集合
     * @return 结果
     */
    public int deleteRhdProjectListByProjectIds(String projectIds);

    /**
     * 删除查询信息
     * 
     * @param projectId 查询主键
     * @return 结果
     */
    public int deleteRhdProjectListByProjectId(Long projectId);
}
