package com.ruoyi.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.ruoyi.common.core.domain.Ztree;
import com.ruoyi.common.core.domain.entity.SysDept;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.domain.InsuranceCompanyPerson;
import com.ruoyi.system.mapper.SysDeptMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SchoolMapper;
import com.ruoyi.system.domain.School;
import com.ruoyi.system.service.ISchoolService;
import com.ruoyi.common.core.text.Convert;

/**
 * 学校管理Service业务层处理
 * 
 * @author wuchunhui
 * @date 2022-05-13
 */
@Service
public class SchoolServiceImpl implements ISchoolService 
{
    @Autowired
    private SchoolMapper schoolMapper;

    @Autowired
    private SysDeptMapper sysDeptMapper;

    /**
     * 查询学校管理
     * 
     * @param id 学校管理主键
     * @return 学校管理
     */
    @Override
    public School selectSchoolById(Long id)
    {
        return schoolMapper.selectSchoolById(id);
    }

    /**
     * 查询学校管理列表
     * 
     * @param school 学校管理
     * @return 学校管理
     */
    @Override
    public List<School> selectSchoolList(School school)
    {
        return schoolMapper.selectSchoolList(school);
    }

    /**
     * 新增学校管理
     * 
     * @param school 学校管理
     * @return 结果
     */
    @Override
    public int insertSchool(School school)
    {
        school.setCreateTime(DateUtils.getNowDate());
        return schoolMapper.insertSchool(school);
    }

    /**
     * 修改学校管理
     * 
     * @param school 学校管理
     * @return 结果
     */
    @Override
    public int updateSchool(School school)
    {
        school.setUpdateTime(DateUtils.getNowDate());
        return schoolMapper.updateSchool(school);
    }

    /**
     * 批量删除学校管理
     * 
     * @param ids 需要删除的学校管理主键
     * @return 结果
     */
    @Override
    public int deleteSchoolByIds(String ids)
    {
        return schoolMapper.deleteSchoolByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学校管理信息
     * 
     * @param id 学校管理主键
     * @return 结果
     */
    @Override
    public int deleteSchoolById(Long id)
    {
        return schoolMapper.deleteSchoolById(id);
    }

    @Override
    public List<Ztree> selectCountDeptTree(Long companyId) {
        SysDept dept = new SysDept();
        dept.setParentId(426L);
        List<SysDept> list = sysDeptMapper.selectDeptList(dept);
        List<Ztree> ztrees = new ArrayList<Ztree>();
        for (SysDept sysDept : list){
            Ztree ztree = new Ztree();
            ztree.setId(sysDept.getDeptId());
            ztree.setpId(sysDept.getDeptId());
            ztree.setName(sysDept.getDeptName());
            ztree.setTitle(sysDept.getDeptName());
            ztrees.add(ztree);
        }
        return ztrees;
    }
}
