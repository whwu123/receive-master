package com.ruoyi.web.controller.system;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.InsuranceCompany;
import com.ruoyi.system.service.IInsuranceCompanyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 公司管理Controller
 * 
 * @author wuchunhui
 * @date 2022-05-06
 */
@Controller
@RequestMapping("/system/company")
public class InsuranceCompanyController extends BaseController
{
    private String prefix = "system/company";

    @Autowired
    private IInsuranceCompanyService insuranceCompanyService;

    @RequiresPermissions("system:company:view")
    @GetMapping()
    public String company()
    {
        return prefix + "/company";
    }

    /**
     * 查询公司管理列表
     */
    @RequiresPermissions("system:company:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(InsuranceCompany insuranceCompany)
    {
        startPage();
        List<InsuranceCompany> list = insuranceCompanyService.selectInsuranceCompanyList(insuranceCompany);
        return getDataTable(list);
    }

    /**
     * 导出公司管理列表
     */
    @RequiresPermissions("system:company:export")
    @Log(title = "公司管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(InsuranceCompany insuranceCompany)
    {

        List<InsuranceCompany> list = insuranceCompanyService.selectInsuranceCompanyList(insuranceCompany);
        ExcelUtil<InsuranceCompany> util = new ExcelUtil<InsuranceCompany>(InsuranceCompany.class);
        return util.exportExcel(list, "公司管理数据");
    }

    /**
     * 新增公司管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存公司管理
     */
    @RequiresPermissions("system:company:add")
    @Log(title = "公司管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(InsuranceCompany insuranceCompany)
    {
        insuranceCompany.setCreateBy(getLoginName());
        return toAjax(insuranceCompanyService.insertInsuranceCompany(insuranceCompany));
    }

    /**
     * 修改公司管理
     */
    @RequiresPermissions("system:company:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        InsuranceCompany insuranceCompany = insuranceCompanyService.selectInsuranceCompanyById(id);
        mmap.put("insuranceCompany", insuranceCompany);
        return prefix + "/edit";
    }

    /**
     * 修改保存公司管理
     */
    @RequiresPermissions("system:company:edit")
    @Log(title = "公司管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(InsuranceCompany insuranceCompany)
    {
        insuranceCompany.setUpdateBy(getLoginName());
        return toAjax(insuranceCompanyService.updateInsuranceCompany(insuranceCompany));
    }

    /**
     * 删除公司管理
     */
    @RequiresPermissions("system:company:remove")
    @Log(title = "公司管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(insuranceCompanyService.deleteInsuranceCompanyByIds(ids));
    }
}
