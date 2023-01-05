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
import com.ruoyi.system.domain.RhdCardsList;
import com.ruoyi.system.service.IRhdCardsListService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * cardsListController
 * 
 * @author ruoyi
 * @date 2022-12-29
 */
@Controller
@RequestMapping("/system/cardList")
public class RhdCardsListController extends BaseController
{
    private String prefix = "system/cardList";

    @Autowired
    private IRhdCardsListService rhdCardsListService;

    @RequiresPermissions("system:cardList:view")
    @GetMapping()
    public String cardList()
    {
        return prefix + "/cardList";
    }

    /**
     * 查询cardsList列表
     */
    @RequiresPermissions("system:cardList:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(RhdCardsList rhdCardsList)
    {
        startPage();
        List<RhdCardsList> list = rhdCardsListService.selectRhdCardsListList(rhdCardsList);
        return getDataTable(list);
    }

    /**
     * 导出cardsList列表
     */
    @RequiresPermissions("system:cardList:export")
    @Log(title = "cardsList", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(RhdCardsList rhdCardsList)
    {
        List<RhdCardsList> list = rhdCardsListService.selectRhdCardsListList(rhdCardsList);
        ExcelUtil<RhdCardsList> util = new ExcelUtil<RhdCardsList>(RhdCardsList.class);
        return util.exportExcel(list, "cardsList数据");
    }

    /**
     * 新增cardsList
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存cardsList
     */
    @RequiresPermissions("system:cardList:add")
    @Log(title = "cardsList", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(RhdCardsList rhdCardsList)
    {
        rhdCardsList.setCreateBy(getLoginName());
        return toAjax(rhdCardsListService.insertRhdCardsList(rhdCardsList));
    }

    /**
     * 修改cardsList
     */
    @RequiresPermissions("system:cardList:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        RhdCardsList rhdCardsList = rhdCardsListService.selectRhdCardsListById(id);
        mmap.put("rhdCardsList", rhdCardsList);
        return prefix + "/edit";
    }

    /**
     * 修改保存cardsList
     */
    @RequiresPermissions("system:cardList:edit")
    @Log(title = "cardsList", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(RhdCardsList rhdCardsList)
    {
        return toAjax(rhdCardsListService.updateRhdCardsList(rhdCardsList));
    }

    /**
     * 删除cardsList
     */
    @RequiresPermissions("system:cardList:remove")
    @Log(title = "cardsList", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(rhdCardsListService.deleteRhdCardsListByIds(ids));
    }
}
