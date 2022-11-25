package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RhdProjectListMapper;
import com.ruoyi.system.domain.RhdProjectList;
import com.ruoyi.system.service.IRhdProjectListService;
import com.ruoyi.common.core.text.Convert;

/**
 * 查询Service业务层处理
 * 
 * @author wch
 * @date 2022-11-25
 */
@Service
public class RhdProjectListServiceImpl implements IRhdProjectListService 
{
    @Autowired
    private RhdProjectListMapper rhdProjectListMapper;

    /**
     * 查询查询
     * 
     * @param projectId 查询主键
     * @return 查询
     */
    @Override
    public RhdProjectList selectRhdProjectListByProjectId(Long projectId)
    {
        return rhdProjectListMapper.selectRhdProjectListByProjectId(projectId);
    }

    /**
     * 查询查询列表
     * 
     * @param rhdProjectList 查询
     * @return 查询
     */
    @Override
    public List<RhdProjectList> selectRhdProjectListList(RhdProjectList rhdProjectList)
    {
        return rhdProjectListMapper.selectRhdProjectListList(rhdProjectList);
    }

    /**
     * 新增查询
     * 
     * @param rhdProjectList 查询
     * @return 结果
     */
    @Override
    public int insertRhdProjectList(RhdProjectList rhdProjectList)
    {
        rhdProjectList.setCreateTime(DateUtils.getNowDate());

        return rhdProjectListMapper.insertRhdProjectList(rhdProjectList);
    }

    /**
     * 修改查询
     * 
     * @param rhdProjectList 查询
     * @return 结果
     */
    @Override
    public int updateRhdProjectList(RhdProjectList rhdProjectList)
    {
        rhdProjectList.setUpdateTime(DateUtils.getNowDate());
        return rhdProjectListMapper.updateRhdProjectList(rhdProjectList);
    }

    /**
     * 批量删除查询
     * 
     * @param projectIds 需要删除的查询主键
     * @return 结果
     */
    @Override
    public int deleteRhdProjectListByProjectIds(String projectIds)
    {
        return rhdProjectListMapper.deleteRhdProjectListByProjectIds(Convert.toStrArray(projectIds));
    }

    /**
     * 删除查询信息
     * 
     * @param projectId 查询主键
     * @return 结果
     */
    @Override
    public int deleteRhdProjectListByProjectId(Long projectId)
    {
        return rhdProjectListMapper.deleteRhdProjectListByProjectId(projectId);
    }
}
