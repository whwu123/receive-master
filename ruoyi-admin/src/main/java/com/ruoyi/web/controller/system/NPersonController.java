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
import com.ruoyi.system.domain.NPerson;
import com.ruoyi.system.service.INPersonService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 队员管理Controller
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
@Controller
@RequestMapping("/system/nperson")
public class NPersonController extends BaseController
{
    private String prefix = "system/nperson";

    @Autowired
    private INPersonService nPersonService;

    @RequiresPermissions("system:nperson:view")
    @GetMapping()
    public String nperson()
    {
        return prefix + "/nperson";
    }

    /**
     * 查询队员管理列表
     */
    @RequiresPermissions("system:nperson:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(NPerson nPerson)
    {
        startPage();
        List<NPerson> list = nPersonService.selectNPersonList(nPerson);
        return getDataTable(list);
    }

    /**
     * 导出队员管理列表
     */
    @RequiresPermissions("system:nperson:export")
    @Log(title = "队员管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(NPerson nPerson)
    {
        List<NPerson> list = nPersonService.selectNPersonList(nPerson);
        ExcelUtil<NPerson> util = new ExcelUtil<NPerson>(NPerson.class);
        return util.exportExcel(list, "队员管理数据");
    }

    /**
     * 新增队员管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存队员管理
     */
    @RequiresPermissions("system:nperson:add")
    @Log(title = "队员管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(NPerson nPerson)
    {
        return toAjax(nPersonService.insertNPerson(nPerson));
    }

    /**
     * 修改队员管理
     */
    @RequiresPermissions("system:nperson:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        NPerson nPerson = nPersonService.selectNPersonById(id);
        mmap.put("nPerson", nPerson);
        return prefix + "/edit";
    }

    /**
     * 修改保存队员管理
     */
    @RequiresPermissions("system:nperson:edit")
    @Log(title = "队员管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(NPerson nPerson)
    {
        return toAjax(nPersonService.updateNPerson(nPerson));
    }

    /**
     * 删除队员管理
     */
    @RequiresPermissions("system:nperson:remove")
    @Log(title = "队员管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(nPersonService.deleteNPersonByIds(ids));
    }
}
