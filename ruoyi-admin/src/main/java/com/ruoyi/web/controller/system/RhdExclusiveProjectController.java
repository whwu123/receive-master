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
import com.ruoyi.system.domain.RhdExclusiveProject;
import com.ruoyi.system.service.IRhdExclusiveProjectService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 专属项目Controller
 * 
 * @author wch
 * @date 2022-12-30
 */
@Controller
@RequestMapping("/system/exclusiveProject")
public class RhdExclusiveProjectController extends BaseController
{
    private String prefix = "system/exclusiveProject";

    @Autowired
    private IRhdExclusiveProjectService rhdExclusiveProjectService;

    @RequiresPermissions("system:exclusiveProject:view")
    @GetMapping()
    public String exclusiveProject()
    {
        return prefix + "/exclusiveProject";
    }

    /**
     * 查询专属项目列表
     */
    @RequiresPermissions("system:exclusiveProject:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(RhdExclusiveProject rhdExclusiveProject)
    {
        startPage();
        List<RhdExclusiveProject> list = rhdExclusiveProjectService.selectRhdExclusiveProjectList(rhdExclusiveProject);
        return getDataTable(list);
    }

    /**
     * 导出专属项目列表
     */
    @RequiresPermissions("system:exclusiveProject:export")
    @Log(title = "专属项目", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(RhdExclusiveProject rhdExclusiveProject)
    {
        List<RhdExclusiveProject> list = rhdExclusiveProjectService.selectRhdExclusiveProjectList(rhdExclusiveProject);
        ExcelUtil<RhdExclusiveProject> util = new ExcelUtil<RhdExclusiveProject>(RhdExclusiveProject.class);
        return util.exportExcel(list, "专属项目数据");
    }

    /**
     * 新增专属项目
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存专属项目
     */
    @RequiresPermissions("system:exclusiveProject:add")
    @Log(title = "专属项目", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(RhdExclusiveProject rhdExclusiveProject)
    {
        rhdExclusiveProject.setCreateBy(getLoginName());
        return toAjax(rhdExclusiveProjectService.insertRhdExclusiveProject(rhdExclusiveProject));
    }

    /**
     * 修改专属项目
     */
    @RequiresPermissions("system:exclusiveProject:edit")
    @GetMapping("/edit/{exclusiveId}")
    public String edit(@PathVariable("exclusiveId") Long exclusiveId, ModelMap mmap)
    {
        RhdExclusiveProject rhdExclusiveProject = rhdExclusiveProjectService.selectRhdExclusiveProjectByExclusiveId(exclusiveId);
        mmap.put("rhdExclusiveProject", rhdExclusiveProject);
        return prefix + "/edit";
    }

    /**
     * 修改保存专属项目
     */
    @RequiresPermissions("system:exclusiveProject:edit")
    @Log(title = "专属项目", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(RhdExclusiveProject rhdExclusiveProject)
    {
        return toAjax(rhdExclusiveProjectService.updateRhdExclusiveProject(rhdExclusiveProject));
    }

    /**
     * 删除专属项目
     */
    @RequiresPermissions("system:exclusiveProject:remove")
    @Log(title = "专属项目", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(rhdExclusiveProjectService.deleteRhdExclusiveProjectByExclusiveIds(ids));
    }
}
