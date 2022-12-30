package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RhdLackCardProjectMapper;
import com.ruoyi.system.domain.RhdLackCardProject;
import com.ruoyi.system.service.IRhdLackCardProjectService;
import com.ruoyi.common.core.text.Convert;

/**
 * 缺卡项目Service业务层处理
 * 
 * @author wch
 * @date 2022-12-30
 */
@Service
public class RhdLackCardProjectServiceImpl implements IRhdLackCardProjectService 
{
    @Autowired
    private RhdLackCardProjectMapper rhdLackCardProjectMapper;

    /**
     * 查询缺卡项目
     * 
     * @param lackId 缺卡项目主键
     * @return 缺卡项目
     */
    @Override
    public RhdLackCardProject selectRhdLackCardProjectByLackId(Long lackId)
    {
        return rhdLackCardProjectMapper.selectRhdLackCardProjectByLackId(lackId);
    }

    /**
     * 查询缺卡项目列表
     * 
     * @param rhdLackCardProject 缺卡项目
     * @return 缺卡项目
     */
    @Override
    public List<RhdLackCardProject> selectRhdLackCardProjectList(RhdLackCardProject rhdLackCardProject)
    {
        return rhdLackCardProjectMapper.selectRhdLackCardProjectList(rhdLackCardProject);
    }

    /**
     * 新增缺卡项目
     * 
     * @param rhdLackCardProject 缺卡项目
     * @return 结果
     */
    @Override
    public int insertRhdLackCardProject(RhdLackCardProject rhdLackCardProject)
    {
        rhdLackCardProject.setCreateTime(DateUtils.getNowDate());
        return rhdLackCardProjectMapper.insertRhdLackCardProject(rhdLackCardProject);
    }

    /**
     * 修改缺卡项目
     * 
     * @param rhdLackCardProject 缺卡项目
     * @return 结果
     */
    @Override
    public int updateRhdLackCardProject(RhdLackCardProject rhdLackCardProject)
    {
        rhdLackCardProject.setUpdateTime(DateUtils.getNowDate());
        return rhdLackCardProjectMapper.updateRhdLackCardProject(rhdLackCardProject);
    }

    /**
     * 批量删除缺卡项目
     * 
     * @param lackIds 需要删除的缺卡项目主键
     * @return 结果
     */
    @Override
    public int deleteRhdLackCardProjectByLackIds(String lackIds)
    {
        return rhdLackCardProjectMapper.deleteRhdLackCardProjectByLackIds(Convert.toStrArray(lackIds));
    }

    /**
     * 删除缺卡项目信息
     * 
     * @param lackId 缺卡项目主键
     * @return 结果
     */
    @Override
    public int deleteRhdLackCardProjectByLackId(Long lackId)
    {
        return rhdLackCardProjectMapper.deleteRhdLackCardProjectByLackId(lackId);
    }
}
