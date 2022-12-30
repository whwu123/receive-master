package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RhdExclusiveProjectMapper;
import com.ruoyi.system.domain.RhdExclusiveProject;
import com.ruoyi.system.service.IRhdExclusiveProjectService;
import com.ruoyi.common.core.text.Convert;

/**
 * 专属项目Service业务层处理
 * 
 * @author wch
 * @date 2022-12-30
 */
@Service
public class RhdExclusiveProjectServiceImpl implements IRhdExclusiveProjectService 
{
    @Autowired
    private RhdExclusiveProjectMapper rhdExclusiveProjectMapper;

    /**
     * 查询专属项目
     * 
     * @param exclusiveId 专属项目主键
     * @return 专属项目
     */
    @Override
    public RhdExclusiveProject selectRhdExclusiveProjectByExclusiveId(Long exclusiveId)
    {
        return rhdExclusiveProjectMapper.selectRhdExclusiveProjectByExclusiveId(exclusiveId);
    }

    /**
     * 查询专属项目列表
     * 
     * @param rhdExclusiveProject 专属项目
     * @return 专属项目
     */
    @Override
    public List<RhdExclusiveProject> selectRhdExclusiveProjectList(RhdExclusiveProject rhdExclusiveProject)
    {
        return rhdExclusiveProjectMapper.selectRhdExclusiveProjectList(rhdExclusiveProject);
    }

    /**
     * 新增专属项目
     * 
     * @param rhdExclusiveProject 专属项目
     * @return 结果
     */
    @Override
    public int insertRhdExclusiveProject(RhdExclusiveProject rhdExclusiveProject)
    {
        rhdExclusiveProject.setCreateTime(DateUtils.getNowDate());
        return rhdExclusiveProjectMapper.insertRhdExclusiveProject(rhdExclusiveProject);
    }

    /**
     * 修改专属项目
     * 
     * @param rhdExclusiveProject 专属项目
     * @return 结果
     */
    @Override
    public int updateRhdExclusiveProject(RhdExclusiveProject rhdExclusiveProject)
    {
        rhdExclusiveProject.setUpdateTime(DateUtils.getNowDate());
        return rhdExclusiveProjectMapper.updateRhdExclusiveProject(rhdExclusiveProject);
    }

    /**
     * 批量删除专属项目
     * 
     * @param exclusiveIds 需要删除的专属项目主键
     * @return 结果
     */
    @Override
    public int deleteRhdExclusiveProjectByExclusiveIds(String exclusiveIds)
    {
        return rhdExclusiveProjectMapper.deleteRhdExclusiveProjectByExclusiveIds(Convert.toStrArray(exclusiveIds));
    }

    /**
     * 删除专属项目信息
     * 
     * @param exclusiveId 专属项目主键
     * @return 结果
     */
    @Override
    public int deleteRhdExclusiveProjectByExclusiveId(Long exclusiveId)
    {
        return rhdExclusiveProjectMapper.deleteRhdExclusiveProjectByExclusiveId(exclusiveId);
    }
}
