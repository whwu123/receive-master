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
import com.ruoyi.system.domain.RhdSendLog;
import com.ruoyi.system.service.IRhdSendLogService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 发信管理Controller
 * 
 * @author wch
 * @date 2023-01-12
 */
@Controller
@RequestMapping("/system/sendMessagelog")
public class RhdSendLogController extends BaseController
{
    private String prefix = "system/sendMessagelog";

    @Autowired
    private IRhdSendLogService rhdSendLogService;

    @RequiresPermissions("system:sendMessagelog:view")
    @GetMapping()
    public String sendMessagelog()
    {
        return prefix + "/sendMessagelog";
    }

    /**
     * 查询发信管理列表
     */
    @RequiresPermissions("system:sendMessagelog:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(RhdSendLog rhdSendLog)
    {
        startPage();
        List<RhdSendLog> list = rhdSendLogService.selectRhdSendLogList(rhdSendLog);
        return getDataTable(list);
    }

    /**
     * 导出发信管理列表
     */
    @RequiresPermissions("system:sendMessagelog:export")
    @Log(title = "发信管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(RhdSendLog rhdSendLog)
    {
        List<RhdSendLog> list = rhdSendLogService.selectRhdSendLogList(rhdSendLog);
        ExcelUtil<RhdSendLog> util = new ExcelUtil<RhdSendLog>(RhdSendLog.class);
        return util.exportExcel(list, "发信管理数据");
    }

    /**
     * 新增发信管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存发信管理
     */
    @RequiresPermissions("system:sendMessagelog:add")
    @Log(title = "发信管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(RhdSendLog rhdSendLog)
    {
        return toAjax(rhdSendLogService.insertRhdSendLog(rhdSendLog));
    }

    /**
     * 修改发信管理
     */
    @RequiresPermissions("system:sendMessagelog:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        RhdSendLog rhdSendLog = rhdSendLogService.selectRhdSendLogById(id);
        mmap.put("rhdSendLog", rhdSendLog);
        return prefix + "/edit";
    }

    /**
     * 修改保存发信管理
     */
    @RequiresPermissions("system:sendMessagelog:edit")
    @Log(title = "发信管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(RhdSendLog rhdSendLog)
    {
        return toAjax(rhdSendLogService.updateRhdSendLog(rhdSendLog));
    }

    /**
     * 删除发信管理
     */
    @RequiresPermissions("system:sendMessagelog:remove")
    @Log(title = "发信管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(rhdSendLogService.deleteRhdSendLogByIds(ids));
    }
}
