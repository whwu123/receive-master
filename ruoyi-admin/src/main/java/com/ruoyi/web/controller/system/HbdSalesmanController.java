package com.ruoyi.web.controller.system;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.ruoyi.system.domain.HbdSalesmanMessqges;
import com.ruoyi.system.service.IHbdSalesmanMessqgesService;
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
import com.ruoyi.system.domain.HbdSalesman;
import com.ruoyi.system.service.IHbdSalesmanService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 人员管理Controller
 * 
 * @author wuchunhui
 * @date 2022-05-19
 */
@Controller
@RequestMapping("/system/salesman")
public class HbdSalesmanController extends BaseController
{
    private String prefix = "system/salesman";

    @Autowired
    private IHbdSalesmanService hbdSalesmanService;
    @Autowired
    private IHbdSalesmanMessqgesService hbdSalesmanMessqgesService;

    @RequiresPermissions("system:salesman:view")
    @GetMapping()
    public String salesman()
    {
        return prefix + "/salesman";
    }

    /**
     * 查询人员管理列表
     */
    @RequiresPermissions("system:salesman:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HbdSalesman hbdSalesman)
    {
        startPage();
        List<HbdSalesman> list = hbdSalesmanService.selectHbdSalesmanList(hbdSalesman);
        return getDataTable(list);
    }

    /**
     * 导出人员管理列表
     */
    @RequiresPermissions("system:salesman:export")
    @Log(title = "人员管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HbdSalesman hbdSalesman)
    {
        List<HbdSalesman> list = hbdSalesmanService.selectHbdSalesmanList(hbdSalesman);
        ExcelUtil<HbdSalesman> util = new ExcelUtil<HbdSalesman>(HbdSalesman.class);
        return util.exportExcel(list, "人员管理数据");
    }

    /**
     * 新增人员管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存人员管理
     */
    @RequiresPermissions("system:salesman:add")
    @Log(title = "人员管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HbdSalesman hbdSalesman)
    {
        return toAjax(hbdSalesmanService.insertHbdSalesman(hbdSalesman));
    }

    /**
     * 修改人员管理
     */
    @RequiresPermissions("system:salesman:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        HbdSalesman hbdSalesman = hbdSalesmanService.selectHbdSalesmanById(id);
        mmap.put("hbdSalesman", hbdSalesman);
        return prefix + "/edit";
    }

    /**
     * 修改保存人员管理
     */
    @RequiresPermissions("system:salesman:edit")
    @Log(title = "人员管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HbdSalesman hbdSalesman)
    {
        return toAjax(hbdSalesmanService.updateHbdSalesman(hbdSalesman));
    }



    @Log(title = "存入", businessType = BusinessType.UPDATE)
    @PostMapping("/deposit")
    @ResponseBody
    public AjaxResult deposit(HbdSalesman hbdSalesman,String depositTime,String depositMoney)
    {
        //插入一条记录到信息表
        HbdSalesmanMessqges hbdSalesmanMessqges = new HbdSalesmanMessqges();
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            hbdSalesmanMessqges.setCreateTime(sdf.parse(depositTime));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        hbdSalesmanMessqges.setCreateBy(getLoginName());
        hbdSalesmanMessqges.setSmType(Long.valueOf("1"));
        hbdSalesmanMessqges.setSmMoney(Double.parseDouble(depositMoney));
        hbdSalesmanMessqges.setState(Long.valueOf("0"));
        hbdSalesmanMessqges.setSalesmanId(hbdSalesman.getId());
        hbdSalesmanMessqges.setSalesmanName(hbdSalesman.getsName());
        hbdSalesmanMessqgesService.insertHbdSalesmanMessqges(hbdSalesmanMessqges);

        if(depositMoney!=null && !depositMoney.isEmpty()){
            hbdSalesman.setBalance((hbdSalesman.getBalance()+Double.valueOf(depositMoney)));
        }
        return toAjax(hbdSalesmanService.updateHbdSalesman(hbdSalesman));
    }


    @Log(title = "取出", businessType = BusinessType.UPDATE)
    @PostMapping("/expend")
    @ResponseBody
    public AjaxResult expend(HbdSalesman hbdSalesman,String expendTime,String depositMoney)
    {
        HbdSalesmanMessqges hbdSalesmanMessqges = new HbdSalesmanMessqges();
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            hbdSalesmanMessqges.setCreateTime(sdf.parse(expendTime));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        hbdSalesmanMessqges.setCreateBy(getLoginName());
        hbdSalesmanMessqges.setSmType(Long.valueOf("2"));
        hbdSalesmanMessqges.setSmMoney(Double.parseDouble(depositMoney));
        hbdSalesmanMessqges.setState(Long.valueOf("0"));
        hbdSalesmanMessqges.setSalesmanId(hbdSalesman.getId());
        hbdSalesmanMessqges.setSalesmanName(hbdSalesman.getsName());
        hbdSalesmanMessqgesService.insertHbdSalesmanMessqges(hbdSalesmanMessqges);

        if(depositMoney!=null && !depositMoney.isEmpty()){
            hbdSalesman.setBalance((hbdSalesman.getBalance()-Double.valueOf(depositMoney)));
        }
        return toAjax(hbdSalesmanService.updateHbdSalesman(hbdSalesman));
    }
    /**
     * 删除人员管理
     */
    @RequiresPermissions("system:salesman:remove")
    @Log(title = "人员管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(hbdSalesmanService.deleteHbdSalesmanByIds(ids));
    }

    /**
     * 取钱
     */
    @GetMapping("/salesmanExpend/{id}")
    public String salesmanExpend(@PathVariable("id") Long id, ModelMap mmap)
    {
        HbdSalesman hbdSalesman = hbdSalesmanService.selectHbdSalesmanById(id);
        mmap.put("hbdSalesman", hbdSalesman);
        return prefix + "/expend";
    }

    /**
     * 存钱
     */
    @GetMapping("/salesmanDeposit/{id}")
    public String salesmanDeposit(@PathVariable("id") Long id, ModelMap mmap)
    {
        HbdSalesman hbdSalesman = hbdSalesmanService.selectHbdSalesmanById(id);
        mmap.put("hbdSalesman", hbdSalesman);
        return prefix + "/deposit";
    }

}
