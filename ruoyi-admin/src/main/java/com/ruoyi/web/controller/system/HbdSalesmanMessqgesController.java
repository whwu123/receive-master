package com.ruoyi.system.controller;

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
import com.ruoyi.system.domain.HbdSalesmanMessqges;
import com.ruoyi.system.service.IHbdSalesmanMessqgesService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 信息管理Controller
 *
 * @author wuchunhui
 * @date 2022-05-20
 */
@Controller
@RequestMapping("/system/messqges")
public class HbdSalesmanMessqgesController extends BaseController
{
    private String prefix = "system/messqges";

    @Autowired
    private IHbdSalesmanMessqgesService hbdSalesmanMessqgesService;

    @RequiresPermissions("system:messqges:view")
    @GetMapping()
    public String messqges()
    {
        return prefix + "/messqges";
    }

    /**
     * 查询信息管理列表
     */
    @RequiresPermissions("system:messqges:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HbdSalesmanMessqges hbdSalesmanMessqges)
    {
        startPage();
        List<HbdSalesmanMessqges> list = hbdSalesmanMessqgesService.selectHbdSalesmanMessqgesList(hbdSalesmanMessqges);
        return getDataTable(list);
    }

    /**
     * 导出信息管理列表
     */
    @RequiresPermissions("system:messqges:export")
    @Log(title = "信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HbdSalesmanMessqges hbdSalesmanMessqges)
    {
        List<HbdSalesmanMessqges> list = hbdSalesmanMessqgesService.selectHbdSalesmanMessqgesList(hbdSalesmanMessqges);
        ExcelUtil<HbdSalesmanMessqges> util = new ExcelUtil<HbdSalesmanMessqges>(HbdSalesmanMessqges.class);
        return util.exportExcel(list, "信息管理数据");
    }

    /**
     * 新增信息管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存信息管理
     */
    @RequiresPermissions("system:messqges:add")
    @Log(title = "信息管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HbdSalesmanMessqges hbdSalesmanMessqges)
    {
        return toAjax(hbdSalesmanMessqgesService.insertHbdSalesmanMessqges(hbdSalesmanMessqges));
    }

    /**
     * 修改信息管理
     */
    @RequiresPermissions("system:messqges:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        HbdSalesmanMessqges hbdSalesmanMessqges = hbdSalesmanMessqgesService.selectHbdSalesmanMessqgesById(id);
        mmap.put("hbdSalesmanMessqges", hbdSalesmanMessqges);
        return prefix + "/edit";
    }

    /**
     * 修改保存信息管理
     */
    @RequiresPermissions("system:messqges:edit")
    @Log(title = "信息管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HbdSalesmanMessqges hbdSalesmanMessqges)
    {
        return toAjax(hbdSalesmanMessqgesService.updateHbdSalesmanMessqges(hbdSalesmanMessqges));
    }

    /**
     * 删除信息管理
     */
    @RequiresPermissions("system:messqges:remove")
    @Log(title = "信息管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(hbdSalesmanMessqgesService.deleteHbdSalesmanMessqgesByIds(ids));
    }
}
