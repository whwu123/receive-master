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
import com.ruoyi.system.domain.RhdUserinfoNetty;
import com.ruoyi.system.service.IRhdUserinfoNettyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 用户信息Controller
 * 
 * @author wch
 * @date 2023-01-10
 */
@Controller
@RequestMapping("/system/netty")
public class RhdUserinfoNettyController extends BaseController
{
    private String prefix = "system/netty";

    @Autowired
    private IRhdUserinfoNettyService rhdUserinfoNettyService;

    @RequiresPermissions("system:netty:view")
    @GetMapping()
    public String netty()
    {
        return prefix + "/netty";
    }

    /**
     * 查询用户信息列表
     */
    @RequiresPermissions("system:netty:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(RhdUserinfoNetty rhdUserinfoNetty)
    {
        startPage();
        List<RhdUserinfoNetty> list = rhdUserinfoNettyService.selectRhdUserinfoNettyList(rhdUserinfoNetty);
        return getDataTable(list);
    }

    /**
     * 导出用户信息列表
     */
    @RequiresPermissions("system:netty:export")
    @Log(title = "用户信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(RhdUserinfoNetty rhdUserinfoNetty)
    {
        List<RhdUserinfoNetty> list = rhdUserinfoNettyService.selectRhdUserinfoNettyList(rhdUserinfoNetty);
        ExcelUtil<RhdUserinfoNetty> util = new ExcelUtil<RhdUserinfoNetty>(RhdUserinfoNetty.class);
        return util.exportExcel(list, "用户信息数据");
    }

    /**
     * 新增用户信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存用户信息
     */
    @RequiresPermissions("system:netty:add")
    @Log(title = "用户信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(RhdUserinfoNetty rhdUserinfoNetty)
    {
        return toAjax(rhdUserinfoNettyService.insertRhdUserinfoNetty(rhdUserinfoNetty));
    }

    /**
     * 修改用户信息
     */
    @RequiresPermissions("system:netty:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        RhdUserinfoNetty rhdUserinfoNetty = rhdUserinfoNettyService.selectRhdUserinfoNettyById(id);
        mmap.put("rhdUserinfoNetty", rhdUserinfoNetty);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户信息
     */
    @RequiresPermissions("system:netty:edit")
    @Log(title = "用户信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(RhdUserinfoNetty rhdUserinfoNetty)
    {
        return toAjax(rhdUserinfoNettyService.updateRhdUserinfoNetty(rhdUserinfoNetty));
    }

    /**
     * 删除用户信息
     */
    @RequiresPermissions("system:netty:remove")
    @Log(title = "用户信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(rhdUserinfoNettyService.deleteRhdUserinfoNettyByIds(ids));
    }
}
