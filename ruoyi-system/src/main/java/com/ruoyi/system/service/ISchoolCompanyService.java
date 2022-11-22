package com.ruoyi.system.service;

import com.ruoyi.system.domain.SchoolCompany;

import java.util.List;

/**
 * 学校承保公司Service接口
 * 
 * @author ruoyi
 * @date 2022-10-24
 */
public interface ISchoolCompanyService 
{
    /**
     * 查询学校承保公司
     * 
     * @param id 学校承保公司主键
     * @return 学校承保公司
     */
    public SchoolCompany selectSchoolCompanyById(Long id);

    /**
     * 查询学校承保公司列表
     * 
     * @param schoolCompany 学校承保公司
     * @return 学校承保公司集合
     */
    public List<SchoolCompany> selectSchoolCompanyList(SchoolCompany schoolCompany);

    /**
     * 新增学校承保公司
     * 
     * @param schoolCompany 学校承保公司
     * @return 结果
     */
    public int insertSchoolCompany(SchoolCompany schoolCompany);

    /**
     * 修改学校承保公司
     * 
     * @param schoolCompany 学校承保公司
     * @return 结果
     */
    public int updateSchoolCompany(SchoolCompany schoolCompany);

    /**
     * 批量删除学校承保公司
     * 
     * @param ids 需要删除的学校承保公司主键集合
     * @return 结果
     */
    public int deleteSchoolCompanyByIds(String ids);

    /**
     * 删除学校承保公司信息
     * 
     * @param id 学校承保公司主键
     * @return 结果
     */
    public int deleteSchoolCompanyById(Long id);

    /**
     * 查询学校承保公司列表
     *
     * @param schoolCompany 学校承保公司
     * @return 学校承保公司集合
     */
    public List<SchoolCompany> selectSchoolCompanyListToWeb(Integer state,  Integer schoolId,String chargeCode,List<String> ids);

}
