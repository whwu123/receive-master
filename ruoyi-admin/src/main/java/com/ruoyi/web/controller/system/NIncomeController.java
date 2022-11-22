package com.ruoyi.web.controller.system;

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
import com.ruoyi.system.domain.NIncome;
import com.ruoyi.system.service.INIncomeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 收入管理Controller
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
@Controller
@RequestMapping("/system/income")
public class NIncomeController extends BaseController
{
    private String prefix = "system/income";

    @Autowired
    private INIncomeService nIncomeService;

    @RequiresPermissions("system:income:view")
    @GetMapping()
    public String income()
    {
        return prefix + "/income";
    }

    /**
     * 查询收入管理列表
     */
    @RequiresPermissions("system:income:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(NIncome nIncome)
    {
        startPage();
        List<NIncome> list = nIncomeService.selectNIncomeList(nIncome);
        return getDataTable(list);
    }

    /**
     * 导出收入管理列表
     */
    @RequiresPermissions("system:income:export")
    @Log(title = "收入管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(NIncome nIncome)
    {
        List<NIncome> list = nIncomeService.selectNIncomeList(nIncome);
        ExcelUtil<NIncome> util = new ExcelUtil<NIncome>(NIncome.class);
        return util.exportExcel(list, "收入管理数据");
    }

    /**
     * 新增收入管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存收入管理
     */
    @RequiresPermissions("system:income:add")
    @Log(title = "收入管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(NIncome nIncome)
    {
        nIncome.setCreateBy(getLoginName());
        return toAjax(nIncomeService.insertNIncome(nIncome));
    }

    /**
     * 修改收入管理
     */
    @RequiresPermissions("system:income:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        NIncome nIncome = nIncomeService.selectNIncomeById(id);
        mmap.put("nIncome", nIncome);
        return prefix + "/edit";
    }

    /**
     * 修改保存收入管理
     */
    @RequiresPermissions("system:income:edit")
    @Log(title = "收入管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(NIncome nIncome)
    {
        nIncome.setUpdateBy(getLoginName());
        return toAjax(nIncomeService.updateNIncome(nIncome));
    }

    /**
     * 删除收入管理
     */
    @RequiresPermissions("system:income:remove")
    @Log(title = "收入管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(nIncomeService.deleteNIncomeByIds(ids));
    }
}
