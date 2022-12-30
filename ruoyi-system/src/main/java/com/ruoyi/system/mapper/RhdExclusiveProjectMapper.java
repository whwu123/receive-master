package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.RhdExclusiveProject;

/**
 * 专属项目Mapper接口
 * 
 * @author wch
 * @date 2022-12-30
 */
public interface RhdExclusiveProjectMapper 
{
    /**
     * 查询专属项目
     * 
     * @param exclusiveId 专属项目主键
     * @return 专属项目
     */
    public RhdExclusiveProject selectRhdExclusiveProjectByExclusiveId(Long exclusiveId);

    /**
     * 查询专属项目列表
     * 
     * @param rhdExclusiveProject 专属项目
     * @return 专属项目集合
     */
    public List<RhdExclusiveProject> selectRhdExclusiveProjectList(RhdExclusiveProject rhdExclusiveProject);

    /**
     * 新增专属项目
     * 
     * @param rhdExclusiveProject 专属项目
     * @return 结果
     */
    public int insertRhdExclusiveProject(RhdExclusiveProject rhdExclusiveProject);

    /**
     * 修改专属项目
     * 
     * @param rhdExclusiveProject 专属项目
     * @return 结果
     */
    public int updateRhdExclusiveProject(RhdExclusiveProject rhdExclusiveProject);

    /**
     * 删除专属项目
     * 
     * @param exclusiveId 专属项目主键
     * @return 结果
     */
    public int deleteRhdExclusiveProjectByExclusiveId(Long exclusiveId);

    /**
     * 批量删除专属项目
     * 
     * @param exclusiveIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRhdExclusiveProjectByExclusiveIds(String[] exclusiveIds);
}
