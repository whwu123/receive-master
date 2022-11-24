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
import com.ruoyi.system.domain.RhdOperationPage;
import com.ruoyi.system.service.IRhdOperationPageService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * operatorPageController
 * 
 * @author wch
 * @date 2022-11-24
 */
@Controller
@RequestMapping("/system/page")
public class RhdOperationPageController extends BaseController
{
    private String prefix = "system/page";

    @Autowired
    private IRhdOperationPageService rhdOperationPageService;

    @RequiresPermissions("system:page:view")
    @GetMapping()
    public String page()
    {
        return prefix + "/page";
    }

    /**
     * 查询operatorPage列表
     */
    @RequiresPermissions("system:page:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(RhdOperationPage rhdOperationPage)
    {
        startPage();
        List<RhdOperationPage> list = rhdOperationPageService.selectRhdOperationPageList(rhdOperationPage);
        return getDataTable(list);
    }

    /**
     * 导出operatorPage列表
     */
    @RequiresPermissions("system:page:export")
    @Log(title = "operatorPage", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(RhdOperationPage rhdOperationPage)
    {
        List<RhdOperationPage> list = rhdOperationPageService.selectRhdOperationPageList(rhdOperationPage);
        ExcelUtil<RhdOperationPage> util = new ExcelUtil<RhdOperationPage>(RhdOperationPage.class);
        return util.exportExcel(list, "operatorPage数据");
    }

    /**
     * 新增operatorPage
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存operatorPage
     */
    @RequiresPermissions("system:page:add")
    @Log(title = "operatorPage", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(RhdOperationPage rhdOperationPage)
    {
        return toAjax(rhdOperationPageService.insertRhdOperationPage(rhdOperationPage));
    }

    /**
     * 修改operatorPage
     */
    @RequiresPermissions("system:page:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        RhdOperationPage rhdOperationPage = rhdOperationPageService.selectRhdOperationPageById(id);
        mmap.put("rhdOperationPage", rhdOperationPage);
        return prefix + "/edit";
    }

    /**
     * 修改保存operatorPage
     */
    @RequiresPermissions("system:page:edit")
    @Log(title = "operatorPage", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(RhdOperationPage rhdOperationPage)
    {
        return toAjax(rhdOperationPageService.updateRhdOperationPage(rhdOperationPage));
    }

    /**
     * 删除operatorPage
     */
    @RequiresPermissions("system:page:remove")
    @Log(title = "operatorPage", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(rhdOperationPageService.deleteRhdOperationPageByIds(ids));
    }
}
