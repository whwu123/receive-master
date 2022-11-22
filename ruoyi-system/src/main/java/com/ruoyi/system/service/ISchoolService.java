package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.common.core.domain.Ztree;
import com.ruoyi.system.domain.School;

/**
 * 学校管理Service接口
 * 
 * @author wuchunhui
 * @date 2022-05-13
 */
public interface ISchoolService 
{
    /**
     * 查询学校管理
     * 
     * @param id 学校管理主键
     * @return 学校管理
     */
    public School selectSchoolById(Long id);

    /**
     * 查询学校管理列表
     * 
     * @param school 学校管理
     * @return 学校管理集合
     */
    public List<School> selectSchoolList(School school);

    /**
     * 新增学校管理
     * 
     * @param school 学校管理
     * @return 结果
     */
    public int insertSchool(School school);

    /**
     * 修改学校管理
     * 
     * @param school 学校管理
     * @return 结果
     */
    public int updateSchool(School school);

    /**
     * 批量删除学校管理
     * 
     * @param ids 需要删除的学校管理主键集合
     * @return 结果
     */
    public int deleteSchoolByIds(String ids);

    /**
     * 删除学校管理信息
     * 
     * @param id 学校管理主键
     * @return 结果
     */
    public int deleteSchoolById(Long id);

    List<Ztree> selectCountDeptTree(Long companyId);
}
