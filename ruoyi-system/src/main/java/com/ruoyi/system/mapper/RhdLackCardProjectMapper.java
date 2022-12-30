package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.RhdLackCardProject;

/**
 * 缺卡项目Mapper接口
 * 
 * @author wch
 * @date 2022-12-30
 */
public interface RhdLackCardProjectMapper 
{
    /**
     * 查询缺卡项目
     * 
     * @param lackId 缺卡项目主键
     * @return 缺卡项目
     */
    public RhdLackCardProject selectRhdLackCardProjectByLackId(Long lackId);

    /**
     * 查询缺卡项目列表
     * 
     * @param rhdLackCardProject 缺卡项目
     * @return 缺卡项目集合
     */
    public List<RhdLackCardProject> selectRhdLackCardProjectList(RhdLackCardProject rhdLackCardProject);

    /**
     * 新增缺卡项目
     * 
     * @param rhdLackCardProject 缺卡项目
     * @return 结果
     */
    public int insertRhdLackCardProject(RhdLackCardProject rhdLackCardProject);

    /**
     * 修改缺卡项目
     * 
     * @param rhdLackCardProject 缺卡项目
     * @return 结果
     */
    public int updateRhdLackCardProject(RhdLackCardProject rhdLackCardProject);

    /**
     * 删除缺卡项目
     * 
     * @param lackId 缺卡项目主键
     * @return 结果
     */
    public int deleteRhdLackCardProjectByLackId(Long lackId);

    /**
     * 批量删除缺卡项目
     * 
     * @param lackIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRhdLackCardProjectByLackIds(String[] lackIds);
}
