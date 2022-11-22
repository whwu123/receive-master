package com.ruoyi.web.controller.system;

import java.util.List;

import com.ruoyi.common.core.domain.Ztree;
import com.ruoyi.common.utils.StringUtils;
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
import com.ruoyi.system.domain.InsuranceCompanyPerson;
import com.ruoyi.system.service.IInsuranceCompanyPersonService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 保险公司人员管理Controller
 * 
 * @author wuchunhui
 * @date 2022-05-06
 */
@Controller
@RequestMapping("/system/person")
public class InsuranceCompanyPersonController extends BaseController
{
    private String prefix = "system/person";

    @Autowired
    private IInsuranceCompanyPersonService insuranceCompanyPersonService;

    @RequiresPermissions("system:person:view")
    @GetMapping()
    public String person()
    {
        return prefix + "/person";
    }

    /**
     * 查询保险公司人员管理列表
     */
    @RequiresPermissions("system:person:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(InsuranceCompanyPerson insuranceCompanyPerson)
    {
        startPage();
        List<InsuranceCompanyPerson> list = insuranceCompanyPersonService.selectInsuranceCompanyPersonList(insuranceCompanyPerson);
        return getDataTable(list);
    }

    /**
     * 导出保险公司人员管理列表
     */
    @RequiresPermissions("system:person:export")
    @Log(title = "保险公司人员管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(InsuranceCompanyPerson insuranceCompanyPerson)
    {
        List<InsuranceCompanyPerson> list = insuranceCompanyPersonService.selectInsuranceCompanyPersonList(insuranceCompanyPerson);
        ExcelUtil<InsuranceCompanyPerson> util = new ExcelUtil<InsuranceCompanyPerson>(InsuranceCompanyPerson.class);
        return util.exportExcel(list, "保险公司人员管理数据");
    }

    /**
     * 新增保险公司人员管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存保险公司人员管理
     */
    @RequiresPermissions("system:person:add")
    @Log(title = "保险公司人员管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(InsuranceCompanyPerson insuranceCompanyPerson)
    {
        insuranceCompanyPerson.setCreateBy(getLoginName());
        return toAjax(insuranceCompanyPersonService.insertInsuranceCompanyPerson(insuranceCompanyPerson));
    }

    /**
     * 修改保险公司人员管理
     */
    @RequiresPermissions("system:person:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        InsuranceCompanyPerson insuranceCompanyPerson = insuranceCompanyPersonService.selectInsuranceCompanyPersonById(id);
        mmap.put("insuranceCompanyPerson", insuranceCompanyPerson);
        return prefix + "/edit";
    }

    /**
     * 修改保存保险公司人员管理
     */
    @RequiresPermissions("system:person:edit")
    @Log(title = "保险公司人员管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(InsuranceCompanyPerson insuranceCompanyPerson)
    {
        insuranceCompanyPerson.setUpdateBy(getLoginName());
        return toAjax(insuranceCompanyPersonService.updateInsuranceCompanyPerson(insuranceCompanyPerson));
    }

    /**
     * 删除保险公司人员管理
     */
    @RequiresPermissions("system:person:remove")
    @Log(title = "保险公司人员管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(insuranceCompanyPersonService.deleteInsuranceCompanyPersonByIds(ids));
    }

    /**
     * 选择保险公司管理树
     */
    @GetMapping("/selectCompanyTree")
    public String selectPersonTree() {
        return prefix + "/tree";
    }
    /**
     * 加载保险公司管理树列表
     */
    @GetMapping("/treeData")
    @ResponseBody
    public List<Ztree> treeData() {
        List<Ztree> ztrees = insuranceCompanyPersonService.selectInsuranceCompanyTree();
        return ztrees;
    }



    /**
     * 选择保险公司管理树
     */

    @GetMapping("/selectCompanyPersonTree/{companyId}")
    public String selectCompanyPersonTree(@PathVariable("companyId") Long companyId, ModelMap mmap){
        mmap.put("companyId",companyId);
        return prefix + "/persontree";
    }
    /**
     * 加载保险公司管理树列表
     */
    @GetMapping("/treePersonData")
    @ResponseBody
    public List<Ztree> treePersonData(Long companyId) {
        List<Ztree> ztrees = insuranceCompanyPersonService.selectInsuranceCompanyPersonTree(companyId);
        return ztrees;
    }
}
