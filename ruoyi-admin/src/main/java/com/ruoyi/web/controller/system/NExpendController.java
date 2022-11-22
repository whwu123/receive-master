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
import com.ruoyi.system.domain.NExpend;
import com.ruoyi.system.service.INExpendService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 支出管理Controller
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
@Controller
@RequestMapping("/system/expend")
public class NExpendController extends BaseController
{
    private String prefix = "system/expend";

    @Autowired
    private INExpendService nExpendService;

    @RequiresPermissions("system:expend:view")
    @GetMapping()
    public String expend()
    {
        return prefix + "/expend";
    }

    /**
     * 查询支出管理列表
     */
    @RequiresPermissions("system:expend:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(NExpend nExpend)
    {
        startPage();
        List<NExpend> list = nExpendService.selectNExpendList(nExpend);
        return getDataTable(list);
    }

    /**
     * 导出支出管理列表
     */
    @RequiresPermissions("system:expend:export")
    @Log(title = "支出管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(NExpend nExpend)
    {
        List<NExpend> list = nExpendService.selectNExpendList(nExpend);
        ExcelUtil<NExpend> util = new ExcelUtil<NExpend>(NExpend.class);
        return util.exportExcel(list, "支出管理数据");
    }

    /**
     * 新增支出管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存支出管理
     */
    @RequiresPermissions("system:expend:add")
    @Log(title = "支出管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(NExpend nExpend)
    {
        return toAjax(nExpendService.insertNExpend(nExpend));
    }

    /**
     * 修改支出管理
     */
    @RequiresPermissions("system:expend:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        NExpend nExpend = nExpendService.selectNExpendById(id);
        mmap.put("nExpend", nExpend);
        return prefix + "/edit";
    }

    /**
     * 修改保存支出管理
     */
    @RequiresPermissions("system:expend:edit")
    @Log(title = "支出管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(NExpend nExpend)
    {
        return toAjax(nExpendService.updateNExpend(nExpend));
    }

    /**
     * 删除支出管理
     */
    @RequiresPermissions("system:expend:remove")
    @Log(title = "支出管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(nExpendService.deleteNExpendByIds(ids));
    }
}
