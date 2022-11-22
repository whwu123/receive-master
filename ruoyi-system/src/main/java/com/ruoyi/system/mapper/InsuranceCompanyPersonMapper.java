package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.InsuranceCompanyPerson;
import com.ruoyi.system.domain.InsuranceCompany;

/**
 * 保险公司人员管理Mapper接口
 * 
 * @author wuchunhui
 * @date 2022-05-06
 */
public interface InsuranceCompanyPersonMapper 
{
    /**
     * 查询保险公司人员管理
     * 
     * @param id 保险公司人员管理主键
     * @return 保险公司人员管理
     */
    public InsuranceCompanyPerson selectInsuranceCompanyPersonById(Long id);

    /**
     * 查询保险公司人员管理列表
     * 
     * @param insuranceCompanyPerson 保险公司人员管理
     * @return 保险公司人员管理集合
     */
    public List<InsuranceCompanyPerson> selectInsuranceCompanyPersonList(InsuranceCompanyPerson insuranceCompanyPerson);

    /**
     * 新增保险公司人员管理
     * 
     * @param insuranceCompanyPerson 保险公司人员管理
     * @return 结果
     */
    public int insertInsuranceCompanyPerson(InsuranceCompanyPerson insuranceCompanyPerson);

    /**
     * 修改保险公司人员管理
     * 
     * @param insuranceCompanyPerson 保险公司人员管理
     * @return 结果
     */
    public int updateInsuranceCompanyPerson(InsuranceCompanyPerson insuranceCompanyPerson);

    /**
     * 删除保险公司人员管理
     * 
     * @param id 保险公司人员管理主键
     * @return 结果
     */
    public int deleteInsuranceCompanyPersonById(Long id);

    /**
     * 批量删除保险公司人员管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteInsuranceCompanyPersonByIds(String[] ids);

    /**
     * 批量删除公司管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteInsuranceCompanyByIds(String[] ids);
    
    /**
     * 批量新增公司管理
     * 
     * @param insuranceCompanyList 公司管理列表
     * @return 结果
     */
    public int batchInsuranceCompany(List<InsuranceCompany> insuranceCompanyList);
    

    /**
     * 通过保险公司人员管理主键删除公司管理信息
     * 
     * @param id 保险公司人员管理ID
     * @return 结果
     */
    public int deleteInsuranceCompanyById(Long id);
}
