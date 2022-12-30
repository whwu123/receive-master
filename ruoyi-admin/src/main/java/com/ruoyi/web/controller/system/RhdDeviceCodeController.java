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
import com.ruoyi.system.domain.RhdDeviceCode;
import com.ruoyi.system.service.IRhdDeviceCodeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 设备列表Controller
 * 
 * @author wch
 * @date 2022-12-29
 */
@Controller
@RequestMapping("/system/code")
public class RhdDeviceCodeController extends BaseController
{
    private String prefix = "system/code";

    @Autowired
    private IRhdDeviceCodeService rhdDeviceCodeService;

    @RequiresPermissions("system:code:view")
    @GetMapping()
    public String code()
    {
        return prefix + "/code";
    }

    /**
     * 查询设备列表列表
     */
    @RequiresPermissions("system:code:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(RhdDeviceCode rhdDeviceCode)
    {
        startPage();
        List<RhdDeviceCode> list = rhdDeviceCodeService.selectRhdDeviceCodeList(rhdDeviceCode);
        return getDataTable(list);
    }

    /**
     * 导出设备列表列表
     */
    @RequiresPermissions("system:code:export")
    @Log(title = "设备列表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(RhdDeviceCode rhdDeviceCode)
    {
        List<RhdDeviceCode> list = rhdDeviceCodeService.selectRhdDeviceCodeList(rhdDeviceCode);
        ExcelUtil<RhdDeviceCode> util = new ExcelUtil<RhdDeviceCode>(RhdDeviceCode.class);
        return util.exportExcel(list, "设备列表数据");
    }

    /**
     * 新增设备列表
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存设备列表
     */
    @RequiresPermissions("system:code:add")
    @Log(title = "设备列表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(RhdDeviceCode rhdDeviceCode)
    {
        return toAjax(rhdDeviceCodeService.insertRhdDeviceCode(rhdDeviceCode));
    }

    /**
     * 修改设备列表
     */
    @RequiresPermissions("system:code:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        RhdDeviceCode rhdDeviceCode = rhdDeviceCodeService.selectRhdDeviceCodeById(id);
        mmap.put("rhdDeviceCode", rhdDeviceCode);
        return prefix + "/edit";
    }

    /**
     * 修改保存设备列表
     */
    @RequiresPermissions("system:code:edit")
    @Log(title = "设备列表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(RhdDeviceCode rhdDeviceCode)
    {
        return toAjax(rhdDeviceCodeService.updateRhdDeviceCode(rhdDeviceCode));
    }

    /**
     * 删除设备列表
     */
    @RequiresPermissions("system:code:remove")
    @Log(title = "设备列表", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(rhdDeviceCodeService.deleteRhdDeviceCodeByIds(ids));
    }
}
