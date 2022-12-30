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
import com.ruoyi.system.domain.RhdLackCardProject;
import com.ruoyi.system.service.IRhdLackCardProjectService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 缺卡项目Controller
 * 
 * @author wch
 * @date 2022-12-30
 */
@Controller
@RequestMapping("/system/lackProject")
public class RhdLackCardProjectController extends BaseController
{
    private String prefix = "system/lackProject";

    @Autowired
    private IRhdLackCardProjectService rhdLackCardProjectService;

    @RequiresPermissions("system:lackProject:view")
    @GetMapping()
    public String lackProject()
    {
        return prefix + "/lackProject";
    }

    /**
     * 查询缺卡项目列表
     */
    @RequiresPermissions("system:lackProject:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(RhdLackCardProject rhdLackCardProject)
    {
        startPage();
        List<RhdLackCardProject> list = rhdLackCardProjectService.selectRhdLackCardProjectList(rhdLackCardProject);
        return getDataTable(list);
    }

    /**
     * 导出缺卡项目列表
     */
    @RequiresPermissions("system:lackProject:export")
    @Log(title = "缺卡项目", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(RhdLackCardProject rhdLackCardProject)
    {
        List<RhdLackCardProject> list = rhdLackCardProjectService.selectRhdLackCardProjectList(rhdLackCardProject);
        ExcelUtil<RhdLackCardProject> util = new ExcelUtil<RhdLackCardProject>(RhdLackCardProject.class);
        return util.exportExcel(list, "缺卡项目数据");
    }

    /**
     * 新增缺卡项目
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存缺卡项目
     */
    @RequiresPermissions("system:lackProject:add")
    @Log(title = "缺卡项目", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(RhdLackCardProject rhdLackCardProject)
    {
        return toAjax(rhdLackCardProjectService.insertRhdLackCardProject(rhdLackCardProject));
    }

    /**
     * 修改缺卡项目
     */
    @RequiresPermissions("system:lackProject:edit")
    @GetMapping("/edit/{lackId}")
    public String edit(@PathVariable("lackId") Long lackId, ModelMap mmap)
    {
        RhdLackCardProject rhdLackCardProject = rhdLackCardProjectService.selectRhdLackCardProjectByLackId(lackId);
        mmap.put("rhdLackCardProject", rhdLackCardProject);
        return prefix + "/edit";
    }

    /**
     * 修改保存缺卡项目
     */
    @RequiresPermissions("system:lackProject:edit")
    @Log(title = "缺卡项目", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(RhdLackCardProject rhdLackCardProject)
    {
        return toAjax(rhdLackCardProjectService.updateRhdLackCardProject(rhdLackCardProject));
    }

    /**
     * 删除缺卡项目
     */
    @RequiresPermissions("system:lackProject:remove")
    @Log(title = "缺卡项目", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(rhdLackCardProjectService.deleteRhdLackCardProjectByLackIds(ids));
    }
}
