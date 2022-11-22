package com.ruoyi.web.controller.system;

import java.util.Date;
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
import com.ruoyi.system.domain.Claim;
import com.ruoyi.system.service.IClaimService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 理赔信息Controller
 * 
 * @author wuchunhui
 * @date 2022-05-07
 */
@Controller
@RequestMapping("/system/claim")
public class ClaimController extends BaseController
{
    private String prefix = "system/claim";

    @Autowired
    private IClaimService claimService;

    @RequiresPermissions("system:claim:view")
    @GetMapping()
    public String claim()
    {
        return prefix + "/claim";
    }

    /**
     * 查询信息管理列表
     */
    @RequiresPermissions("system:claim:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Claim claim)
    {
        startPage();
        List<Claim> list = claimService.selectClaimList(claim);
        return getDataTable(list);
    }

    /**
     * 导出信息管理列表
     */
    @RequiresPermissions("system:claim:export")
    @Log(title = "信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Claim claim)
    {
        List<Claim> list = claimService.selectClaimList(claim);
        ExcelUtil<Claim> util = new ExcelUtil<Claim>(Claim.class);
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
    @RequiresPermissions("system:claim:add")
    @Log(title = "信息管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Claim claim)
    {
        claim.setCreateBy(getLoginName());
        return toAjax(claimService.insertClaim(claim));
    }

    /**
     * 修改信息管理
     */
    @RequiresPermissions("system:claim:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Claim claim = claimService.selectClaimById(id);
        mmap.put("claim", claim);
        return prefix + "/edit";
    }

    /**
     * 修改保存信息管理
     */
    @RequiresPermissions("system:claim:edit")
    @Log(title = "信息管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Claim claim)
    {
        claim.setUpdateBy(getLoginName());
        if(claim.getInsuranceCompanyPerson()!=null){
            claim.setClaimPersonId(claim.getInsuranceCompanyPerson().getId());
        }
        return toAjax(claimService.updateClaim(claim));
    }

    /**
     * 删除信息管理
     */
    @RequiresPermissions("system:claim:remove")
    @Log(title = "信息管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(claimService.deleteClaimByIds(ids));
    }

    @GetMapping("/handClaim/{claimId}")
    public String handClaim(@PathVariable("claimId") Long claimId,ModelMap mmap){
        Claim claim = claimService.selectClaimById(claimId);
        mmap.put("claim", claim);
        return prefix + "/handClaim";
    }

    @GetMapping("/claimView/{claimId}")
    public String claimView(@PathVariable("claimId") Long claimId,ModelMap mmap){
        Claim claim = claimService.selectClaimById(claimId);
        mmap.put("claim", claim);
        return prefix + "/view";
    }
    @GetMapping("/finishClaim/{claimId}")
    public String finishClaim(@PathVariable("claimId") Long claimId,ModelMap mmap){
        Claim claim = claimService.selectClaimById(claimId);
        mmap.put("claim", claim);
        return prefix + "/finishClaim";
    }

    /**
     * 修改完成信息管理
     */

    @Log(title = "信息管理完成", businessType = BusinessType.UPDATE)
    @PostMapping("/finishClaim")
    @ResponseBody
    public AjaxResult finishClaim(Claim claim)
    {
        return toAjax(claimService.updateClaim(claim));
    }
}
