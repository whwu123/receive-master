package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.core.domain.Ztree;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.mapper.InsuranceCompanyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.system.domain.InsuranceCompany;
import com.ruoyi.system.mapper.InsuranceCompanyPersonMapper;
import com.ruoyi.system.domain.InsuranceCompanyPerson;
import com.ruoyi.system.service.IInsuranceCompanyPersonService;
import com.ruoyi.common.core.text.Convert;

/**
 * 保险公司人员管理Service业务层处理
 * 
 * @author wuchunhui
 * @date 2022-05-06
 */
@Service
public class InsuranceCompanyPersonServiceImpl implements IInsuranceCompanyPersonService 
{
    @Autowired
    private InsuranceCompanyPersonMapper insuranceCompanyPersonMapper;

    @Autowired
    private InsuranceCompanyMapper insuranceCompanyMapper;

    /**
     * 查询保险公司人员管理
     * 
     * @param id 保险公司人员管理主键
     * @return 保险公司人员管理
     */
    @Override
    public InsuranceCompanyPerson selectInsuranceCompanyPersonById(Long id)
    {
        return insuranceCompanyPersonMapper.selectInsuranceCompanyPersonById(id);
    }

    /**
     * 查询保险公司人员管理列表
     * 
     * @param insuranceCompanyPerson 保险公司人员管理
     * @return 保险公司人员管理
     */
    @Override
    public List<InsuranceCompanyPerson> selectInsuranceCompanyPersonList(InsuranceCompanyPerson insuranceCompanyPerson)
    {
        return insuranceCompanyPersonMapper.selectInsuranceCompanyPersonList(insuranceCompanyPerson);
    }

    /**
     * 新增保险公司人员管理
     * 
     * @param insuranceCompanyPerson 保险公司人员管理
     * @return 结果
     */
    @Transactional
    @Override
    public int insertInsuranceCompanyPerson(InsuranceCompanyPerson insuranceCompanyPerson)
    {
        insuranceCompanyPerson.setCreateTime(DateUtils.getNowDate());
        int rows = insuranceCompanyPersonMapper.insertInsuranceCompanyPerson(insuranceCompanyPerson);
        insertInsuranceCompany(insuranceCompanyPerson);
        return rows;
    }

    /**
     * 修改保险公司人员管理
     * 
     * @param insuranceCompanyPerson 保险公司人员管理
     * @return 结果
     */
    @Transactional
    @Override
    public int updateInsuranceCompanyPerson(InsuranceCompanyPerson insuranceCompanyPerson)
    {
        insuranceCompanyPerson.setUpdateTime(DateUtils.getNowDate());
        if(insuranceCompanyPerson.getInsuranceCompany() != null){
            insuranceCompanyPerson.setCompanyId(insuranceCompanyPerson.getInsuranceCompany().getId());
        }
        return insuranceCompanyPersonMapper.updateInsuranceCompanyPerson(insuranceCompanyPerson);
    }

    /**
     * 批量删除保险公司人员管理
     * 
     * @param ids 需要删除的保险公司人员管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteInsuranceCompanyPersonByIds(String ids)
    {
        insuranceCompanyPersonMapper.deleteInsuranceCompanyByIds(Convert.toStrArray(ids));
        return insuranceCompanyPersonMapper.deleteInsuranceCompanyPersonByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除保险公司人员管理信息
     * 
     * @param id 保险公司人员管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteInsuranceCompanyPersonById(Long id)
    {
        insuranceCompanyPersonMapper.deleteInsuranceCompanyById(id);
        return insuranceCompanyPersonMapper.deleteInsuranceCompanyPersonById(id);
    }

    /**
     * 新增公司管理信息
     * 
     * @param insuranceCompanyPerson 保险公司人员管理对象
     */
    public void insertInsuranceCompany(InsuranceCompanyPerson insuranceCompanyPerson)
    {
        List<InsuranceCompany> insuranceCompanyList = insuranceCompanyPerson.getInsuranceCompanyList();
        Long id = insuranceCompanyPerson.getId();
        if (StringUtils.isNotNull(insuranceCompanyList))
        {
            List<InsuranceCompany> list = new ArrayList<InsuranceCompany>();
            for (InsuranceCompany insuranceCompany : insuranceCompanyList)
            {
                insuranceCompany.setId(id);
                list.add(insuranceCompany);
            }
            if (list.size() > 0)
            {
                insuranceCompanyPersonMapper.batchInsuranceCompany(list);
            }
        }
    }

    /**
     * 查询保险公司管理树列表
     *
     * @return 所有保险公司管理信息
     */
    @Override
    public List<Ztree> selectInsuranceCompanyTree()
    {
        InsuranceCompany insuranceCompany = new InsuranceCompany();
        insuranceCompany.setState(0);
        List<InsuranceCompany> companyList = insuranceCompanyMapper.selectInsuranceCompanyList(insuranceCompany);
        List<Ztree> ztrees = new ArrayList<Ztree>();
        for (InsuranceCompany company : companyList){
            Ztree ztree = new Ztree();
            ztree.setId(company.getId());
            ztree.setpId(company.getId());
            ztree.setName(company.getCompanyName());
            ztree.setTitle(company.getCompanyName());
            ztrees.add(ztree);
        }
        return ztrees;
    }

    @Override
    public List<Ztree> selectInsuranceCompanyPersonTree(Long companyId) {
        InsuranceCompanyPerson person = new InsuranceCompanyPerson();
        person.setCompanyId(companyId);
        person.setState(0);
        List<InsuranceCompanyPerson> personList = insuranceCompanyPersonMapper.selectInsuranceCompanyPersonList(person);
        List<Ztree> ztrees = new ArrayList<Ztree>();
        for (InsuranceCompanyPerson person1 : personList){
            Ztree ztree = new Ztree();
            ztree.setId(person1.getId());
            ztree.setpId(person1.getId());
            ztree.setName(person1.getPersonName());
            ztree.setTitle(person1.getPersonName());
            ztrees.add(ztree);
        }
        return ztrees;
    }
}
