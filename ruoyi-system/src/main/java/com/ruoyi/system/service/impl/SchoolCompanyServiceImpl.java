package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.domain.SchoolCompany;
import com.ruoyi.system.mapper.SchoolCompanyMapper;
import com.ruoyi.system.service.ISchoolCompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 学校承保公司Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-10-24
 */
@Service
public class SchoolCompanyServiceImpl implements ISchoolCompanyService 
{
    @Autowired
    private SchoolCompanyMapper schoolCompanyMapper;

    /**
     * 查询学校承保公司
     * 
     * @param id 学校承保公司主键
     * @return 学校承保公司
     */
    @Override
    public SchoolCompany selectSchoolCompanyById(Long id)
    {
        return schoolCompanyMapper.selectSchoolCompanyById(id);
    }

    /**
     * 查询学校承保公司列表
     * 
     * @param schoolCompany 学校承保公司
     * @return 学校承保公司
     */
    @Override
    public List<SchoolCompany> selectSchoolCompanyList(SchoolCompany schoolCompany)
    {
        return schoolCompanyMapper.selectSchoolCompanyList(schoolCompany);
    }

    /**
     * 新增学校承保公司
     * 
     * @param schoolCompany 学校承保公司
     * @return 结果
     */
    @Override
    public int insertSchoolCompany(SchoolCompany schoolCompany)
    {
        schoolCompany.setCreateTime(DateUtils.getNowDate());
        return schoolCompanyMapper.insertSchoolCompany(schoolCompany);
    }

    /**
     * 修改学校承保公司
     * 
     * @param schoolCompany 学校承保公司
     * @return 结果
     */
    @Override
    public int updateSchoolCompany(SchoolCompany schoolCompany)
    {
        schoolCompany.setUpdateTime(DateUtils.getNowDate());
        return schoolCompanyMapper.updateSchoolCompany(schoolCompany);
    }

    /**
     * 批量删除学校承保公司
     * 
     * @param ids 需要删除的学校承保公司主键
     * @return 结果
     */
    @Override
    public int deleteSchoolCompanyByIds(String ids)
    {
        return schoolCompanyMapper.deleteSchoolCompanyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学校承保公司信息
     * 
     * @param id 学校承保公司主键
     * @return 结果
     */
    @Override
    public int deleteSchoolCompanyById(Long id)
    {
        return schoolCompanyMapper.deleteSchoolCompanyById(id);
    }

    @Override
    public List<SchoolCompany> selectSchoolCompanyListToWeb(Integer state,  Integer schoolId,String chargeCode,List<String> ids) {
        Map<String,Object> params = new HashMap<>();
        params.put("state",state);
        params.put("schoolId",schoolId);
        params.put("chargeCode",chargeCode);
        params.put("ids",ids);
        return schoolCompanyMapper.selectSchoolCompanyListToWeb(params);
    }
}
