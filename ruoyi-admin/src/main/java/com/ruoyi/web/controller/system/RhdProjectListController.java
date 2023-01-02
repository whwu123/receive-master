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
import com.ruoyi.system.domain.RhdProjectList;
import com.ruoyi.system.service.IRhdProjectListService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 查询Controller
 * 
 * @author wch
 * @date 2022-11-25
 */
@Controller
@RequestMapping("/system/ProjectList")
public class RhdProjectListController extends BaseController
{
    private String prefix = "system/ProjectList";

    @Autowired
    private IRhdProjectListService rhdProjectListService;

    @RequiresPermissions("system:ProjectList:view")
    @GetMapping()
    public String ProjectList()
    {
        return prefix + "/ProjectList";
    }

    /**
     * 查询查询列表
     */
    @RequiresPermissions("system:ProjectList:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(RhdProjectList rhdProjectList)
    {
        startPage();
        List<RhdProjectList> list = rhdProjectListService.selectRhdProjectListList(rhdProjectList);
        return getDataTable(list);
    }

    /**
     * 导出查询列表
     */
    @RequiresPermissions("system:ProjectList:export")
    @Log(title = "查询", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(RhdProjectList rhdProjectList)
    {
        List<RhdProjectList> list = rhdProjectListService.selectRhdProjectListList(rhdProjectList);
        ExcelUtil<RhdProjectList> util = new ExcelUtil<RhdProjectList>(RhdProjectList.class);
        return util.exportExcel(list, "查询数据");
    }

    /**
     * 新增查询
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存查询
     */
    @RequiresPermissions("system:ProjectList:add")
    @Log(title = "查询", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(RhdProjectList rhdProjectList)
    {
        rhdProjectList.setCreateBy(getLoginName());
        rhdProjectList.setStatus("0");
        return toAjax(rhdProjectListService.insertRhdProjectList(rhdProjectList));
    }

    /**
     * 修改查询
     */
    @RequiresPermissions("system:ProjectList:edit")
    @GetMapping("/edit/{projectId}")
    public String edit(@PathVariable("projectId") Long projectId, ModelMap mmap)
    {
        RhdProjectList rhdProjectList = rhdProjectListService.selectRhdProjectListByProjectId(projectId);
        mmap.put("rhdProjectList", rhdProjectList);
        return prefix + "/edit";
    }

    /**
     * 修改保存查询
     */
    @RequiresPermissions("system:ProjectList:edit")
    @Log(title = "查询", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(RhdProjectList rhdProjectList)
    {
        return toAjax(rhdProjectListService.updateRhdProjectList(rhdProjectList));
    }

    /**
     * 删除查询
     */
    @RequiresPermissions("system:ProjectList:remove")
    @Log(title = "查询", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(rhdProjectListService.deleteRhdProjectListByProjectIds(ids));
    }
}
