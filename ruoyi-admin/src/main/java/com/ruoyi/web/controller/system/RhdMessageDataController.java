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
import com.ruoyi.system.domain.RhdMessageData;
import com.ruoyi.system.service.IRhdMessageDataService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 信息管理Controller
 * 
 * @author wch
 * @date 2023-01-02
 */
@Controller
@RequestMapping("/system/messageData")
public class RhdMessageDataController extends BaseController
{
    private String prefix = "system/messageData";

    @Autowired
    private IRhdMessageDataService rhdMessageDataService;

    @RequiresPermissions("system:messageData:view")
    @GetMapping()
    public String messageData()
    {
        return prefix + "/messageData";
    }

    /**
     * 查询信息管理列表
     */
    @RequiresPermissions("system:messageData:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(RhdMessageData rhdMessageData)
    {
        startPage();
        List<RhdMessageData> list = rhdMessageDataService.selectRhdMessageDataList(rhdMessageData);
        return getDataTable(list);
    }

    /**
     * 导出信息管理列表
     */
    @RequiresPermissions("system:messageData:export")
    @Log(title = "信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(RhdMessageData rhdMessageData)
    {
        List<RhdMessageData> list = rhdMessageDataService.selectRhdMessageDataList(rhdMessageData);
        ExcelUtil<RhdMessageData> util = new ExcelUtil<RhdMessageData>(RhdMessageData.class);
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
    @RequiresPermissions("system:messageData:add")
    @Log(title = "信息管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(RhdMessageData rhdMessageData)
    {
        return toAjax(rhdMessageDataService.insertRhdMessageData(rhdMessageData));
    }

    /**
     * 修改信息管理
     */
    @RequiresPermissions("system:messageData:edit")
    @GetMapping("/edit/{messageId}")
    public String edit(@PathVariable("messageId") Long messageId, ModelMap mmap)
    {
        RhdMessageData rhdMessageData = rhdMessageDataService.selectRhdMessageDataByMessageId(messageId);
        mmap.put("rhdMessageData", rhdMessageData);
        return prefix + "/edit";
    }

    /**
     * 修改保存信息管理
     */
    @RequiresPermissions("system:messageData:edit")
    @Log(title = "信息管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(RhdMessageData rhdMessageData)
    {
        return toAjax(rhdMessageDataService.updateRhdMessageData(rhdMessageData));
    }

    /**
     * 删除信息管理
     */
    @RequiresPermissions("system:messageData:remove")
    @Log(title = "信息管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(rhdMessageDataService.deleteRhdMessageDataByMessageIds(ids));
    }
}
