package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.InsuranceCompany;

/**
 * 公司管理Mapper接口
 * 
 * @author wuchunhui
 * @date 2022-05-06
 */
public interface InsuranceCompanyMapper 
{
    /**
     * 查询公司管理
     * 
     * @param id 公司管理主键
     * @return 公司管理
     */
    public InsuranceCompany selectInsuranceCompanyById(Long id);

    /**
     * 查询公司管理列表
     * 
     * @param insuranceCompany 公司管理
     * @return 公司管理集合
     */
    public List<InsuranceCompany> selectInsuranceCompanyList(InsuranceCompany insuranceCompany);

    /**
     * 新增公司管理
     * 
     * @param insuranceCompany 公司管理
     * @return 结果
     */
    public int insertInsuranceCompany(InsuranceCompany insuranceCompany);

    /**
     * 修改公司管理
     * 
     * @param insuranceCompany 公司管理
     * @return 结果
     */
    public int updateInsuranceCompany(InsuranceCompany insuranceCompany);

    /**
     * 删除公司管理
     * 
     * @param id 公司管理主键
     * @return 结果
     */
    public int deleteInsuranceCompanyById(Long id);

    /**
     * 批量删除公司管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteInsuranceCompanyByIds(String[] ids);
}
