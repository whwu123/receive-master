package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.common.core.domain.Ztree;
import com.ruoyi.system.domain.InsuranceCompanyPerson;

/**
 * 保险公司人员管理Service接口
 * 
 * @author wuchunhui
 * @date 2022-05-06
 */
public interface IInsuranceCompanyPersonService 
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
     * 批量删除保险公司人员管理
     * 
     * @param ids 需要删除的保险公司人员管理主键集合
     * @return 结果
     */
    public int deleteInsuranceCompanyPersonByIds(String ids);

    /**
     * 删除保险公司人员管理信息
     * 
     * @param id 保险公司人员管理主键
     * @return 结果
     */
    public int deleteInsuranceCompanyPersonById(Long id);

    /**
     * 查询保险公司管理树列表
     *
     * @return 所有保险公司信息
     */
    public List<Ztree> selectInsuranceCompanyTree();

    List<Ztree> selectInsuranceCompanyPersonTree(Long companyId);
}
