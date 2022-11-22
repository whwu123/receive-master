package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.InsuranceCompany;
import com.ruoyi.system.domain.InsuranceCompanyPerson;
import com.ruoyi.system.domain.School;
import com.ruoyi.system.domain.SchoolCompany;
import com.ruoyi.system.service.IInsuranceCompanyPersonService;
import com.ruoyi.system.service.IInsuranceCompanyService;
import com.ruoyi.system.service.ISchoolCompanyService;
import com.ruoyi.system.service.ISchoolService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 学校承保公司Controller
 * 
 * @author ruoyi
 * @date 2022-10-24
 */
@Controller
@RequestMapping("/system/schoolCompany")
public class SchoolCompanyController extends BaseController
{
    private String prefix = "system/schoolCompany";

    @Autowired
    private ISchoolCompanyService schoolCompanyService;
    @Autowired
    private ISchoolService schoolService;
    @Autowired
    private IInsuranceCompanyService insuranceCompanyService;
    @Autowired
    private IInsuranceCompanyPersonService iInsuranceCompanyPersonService;

    @RequiresPermissions("system:schoolCompany:view")
    @GetMapping()
    public String schoolCompany()
    {
        return prefix + "/schoolCompany";
    }

    /**
     * 查询学校承保公司列表
     */
    @RequiresPermissions("system:schoolCompany:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SchoolCompany schoolCompany)
    {
        startPage();
        List<SchoolCompany> list = schoolCompanyService.selectSchoolCompanyList(schoolCompany);
        return getDataTable(list);
    }

    /**
     * 导出学校承保公司列表
     */
    @RequiresPermissions("system:schoolCompany:export")
    @Log(title = "学校承保公司", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SchoolCompany schoolCompany)
    {
        List<SchoolCompany> list = schoolCompanyService.selectSchoolCompanyList(schoolCompany);
        ExcelUtil<SchoolCompany> util = new ExcelUtil<SchoolCompany>(SchoolCompany.class);
        return util.exportExcel(list, "学校承保公司数据");
    }

    /**
     * 新增学校承保公司
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }


    @GetMapping("/sync")
    public String synConfiguration(){
        return prefix + "/sync";
    }

    /**
     * 新增保存学校承保公司
     */
    @RequiresPermissions("system:schoolCompany:add")
    @Log(title = "学校承保公司", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SchoolCompany schoolCompany)
    {
        schoolCompany.setCreateBy(getLoginName());
        if(schoolCompany.getInsuranceCompanyId() != null ){
           InsuranceCompany  insuranceCompany = insuranceCompanyService.selectInsuranceCompanyById(schoolCompany.getInsuranceCompanyId());
           if(insuranceCompany!=null){
               schoolCompany.setInsuranceCompanyName(insuranceCompany.getCompanyName());
           }
        }

        if(schoolCompany.getInsuranceCompanyPersonId()!= null ){
            InsuranceCompanyPerson insuranceCompanyPerson = iInsuranceCompanyPersonService.selectInsuranceCompanyPersonById(schoolCompany.getInsuranceCompanyPersonId());
            if(insuranceCompanyPerson!=null){
                schoolCompany.setInsuranceCompanyPerson(insuranceCompanyPerson.getPersonName());
                schoolCompany.setInsuranceCompanyPhone(insuranceCompanyPerson.getPersonPhone());
                schoolCompany.setInsuranceCompanySex(insuranceCompanyPerson.getPersonSex());
            }
        }

        return toAjax(schoolCompanyService.insertSchoolCompany(schoolCompany));
    }

    /**
     * 修改学校承保公司
     */
    @RequiresPermissions("system:schoolCompany:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SchoolCompany schoolCompany = schoolCompanyService.selectSchoolCompanyById(id);
        mmap.put("schoolCompany", schoolCompany);
        return prefix + "/edit";
    }

    /**
     * 修改保存学校承保公司
     */
    @RequiresPermissions("system:schoolCompany:edit")
    @Log(title = "学校承保公司", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SchoolCompany schoolCompany)
    {
        schoolCompany.setUpdateBy(getLoginName());
        if(schoolCompany.getInsuranceCompanyId()!= null ){
            InsuranceCompany  insuranceCompany = insuranceCompanyService.selectInsuranceCompanyById(schoolCompany.getInsuranceCompanyId());
            if(insuranceCompany!=null){
                schoolCompany.setInsuranceCompanyName(insuranceCompany.getCompanyName());
            }
        }

        if(schoolCompany.getInsuranceCompanyPersonId()!= null ){
            InsuranceCompanyPerson insuranceCompanyPerson = iInsuranceCompanyPersonService.selectInsuranceCompanyPersonById(schoolCompany.getInsuranceCompanyPersonId());
            if(insuranceCompanyPerson!=null){
                schoolCompany.setInsuranceCompanyPerson(insuranceCompanyPerson.getPersonName());
                schoolCompany.setInsuranceCompanyPhone(insuranceCompanyPerson.getPersonPhone());
                schoolCompany.setInsuranceCompanySex(insuranceCompanyPerson.getPersonSex());
            }
        }
        return toAjax(schoolCompanyService.updateSchoolCompany(schoolCompany));
    }

    /**
     * 删除学校承保公司
     */
    @RequiresPermissions("system:schoolCompany:remove")
    @Log(title = "学校承保公司", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(schoolCompanyService.deleteSchoolCompanyByIds(ids));
    }

    @GetMapping("/addSchoolCompany/{schoolId}")
    public String addSchoolCompany(@PathVariable("schoolId") Long schoolId,ModelMap mmap){
        School school = schoolService.selectSchoolById(schoolId);
        mmap.put("school", school);
        return prefix + "/add";
    }


    /**
     * 删除学校承保公司
     */


    @PostMapping( "/syncData")
    @ResponseBody
    public AjaxResult syncData(String chargeCode1,String chargeCode2,String syncType) {
        Long state = 0L;
        int result = 0;
        int resultSync = 0;
        //1.查询旧的同步数据
        List<SchoolCompany> schoolCompanyList = null;
        SchoolCompany schoolCompany = new SchoolCompany();
        schoolCompany.setState(state);
        if(syncType !=null ){
            if(syncType.equals("00")){
                if(chargeCode1!=null && !chargeCode1.isEmpty()){
                    schoolCompany.setChargeCode(chargeCode1);
                    schoolCompanyList = schoolCompanyService.selectSchoolCompanyList(schoolCompany);
                    result = schoolCompanyList.size();
                }
            }else{
                if(chargeCode1!=null && !chargeCode1.isEmpty()){
                    schoolCompany.setChargeCode(chargeCode1);
                    schoolCompany.setRiskCode(syncType);
                    schoolCompanyList = schoolCompanyService.selectSchoolCompanyList(schoolCompany);
                    result = schoolCompanyList.size();
                }
            }
        }
        //进行数据同步
        if(result>0){
            for(int i=  0;i<schoolCompanyList.size();i++){
                SchoolCompany schoolCompany2 = schoolCompanyList.get(i);
                schoolCompany2.setChargeCode(chargeCode2);
                schoolCompany2.setId(null);
                resultSync =  schoolCompanyService.insertSchoolCompany(schoolCompany2)+1;
            }
        }

        return toAjax(resultSync);
    }


}
