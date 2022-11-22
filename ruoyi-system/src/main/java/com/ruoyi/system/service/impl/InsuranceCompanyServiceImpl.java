package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.InsuranceCompanyMapper;
import com.ruoyi.system.domain.InsuranceCompany;
import com.ruoyi.system.service.IInsuranceCompanyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 公司管理Service业务层处理
 * 
 * @author wuchunhui
 * @date 2022-05-06
 */
@Service
public class InsuranceCompanyServiceImpl implements IInsuranceCompanyService 
{
    @Autowired
    private InsuranceCompanyMapper insuranceCompanyMapper;

    /**
     * 查询公司管理
     * 
     * @param id 公司管理主键
     * @return 公司管理
     */
    @Override
    public InsuranceCompany selectInsuranceCompanyById(Long id)
    {
        return insuranceCompanyMapper.selectInsuranceCompanyById(id);
    }

    /**
     * 查询公司管理列表
     * 
     * @param insuranceCompany 公司管理
     * @return 公司管理
     */
    @Override
    public List<InsuranceCompany> selectInsuranceCompanyList(InsuranceCompany insuranceCompany)
    {
        return insuranceCompanyMapper.selectInsuranceCompanyList(insuranceCompany);
    }

    /**
     * 新增公司管理
     * 
     * @param insuranceCompany 公司管理
     * @return 结果
     */
    @Override
    public int insertInsuranceCompany(InsuranceCompany insuranceCompany)
    {
        insuranceCompany.setCreateTime(DateUtils.getNowDate());
        return insuranceCompanyMapper.insertInsuranceCompany(insuranceCompany);
    }

    /**
     * 修改公司管理
     * 
     * @param insuranceCompany 公司管理
     * @return 结果
     */
    @Override
    public int updateInsuranceCompany(InsuranceCompany insuranceCompany)
    {
        insuranceCompany.setUpdateTime(DateUtils.getNowDate());
        return insuranceCompanyMapper.updateInsuranceCompany(insuranceCompany);
    }

    /**
     * 批量删除公司管理
     * 
     * @param ids 需要删除的公司管理主键
     * @return 结果
     */
    @Override
    public int deleteInsuranceCompanyByIds(String ids)
    {
        return insuranceCompanyMapper.deleteInsuranceCompanyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除公司管理信息
     * 
     * @param id 公司管理主键
     * @return 结果
     */
    @Override
    public int deleteInsuranceCompanyById(Long id)
    {
        return insuranceCompanyMapper.deleteInsuranceCompanyById(id);
    }
}
