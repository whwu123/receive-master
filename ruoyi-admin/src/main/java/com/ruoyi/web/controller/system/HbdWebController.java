package com.ruoyi.web.controller.system;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.system.domain.SchoolCompany;
import com.ruoyi.system.service.IHbdSalesmanMessqgesService;
import com.ruoyi.system.service.IHbdSalesmanService;
import com.ruoyi.system.service.ISchoolCompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/hbd/web")
public class HbdWebController extends BaseController {
    private String prefix = "system/web";

    @Autowired
    private IHbdSalesmanService hbdSalesmanService;
    @Autowired
    private IHbdSalesmanMessqgesService hbdSalesmanMessqgesService;
    @Autowired
    private ISchoolCompanyService schoolCompanyService;

    /*@GetMapping("add")
    public String add(ModelMap mmap)
    {
        List<HbdSalesman> list =hbdSalesmanService.selectHbdSalesmanList(new HbdSalesman());
        mmap.put("list",list);
        return prefix + "/add";
    }


    @PostMapping("/saveHbd")
    @ResponseBody
    public AjaxResult saveHbd(String smType,String smMoney,String yuMoney,String salesmanId,String remark)
    {
        //修改该营销员的余额为
        HbdSalesman hbdSalesman = new HbdSalesman();
        Long id = Long.parseLong(salesmanId);
        hbdSalesman.setId(id);
        hbdSalesman.setBalance(Double.parseDouble(yuMoney));
        hbdSalesman.setRemark(remark);
        hbdSalesmanService.updateHbdSalesman(hbdSalesman);

        //存一条记录到信息表
        //根据英营销员ID查到姓名
        HbdSalesman hbdSalesman1 = hbdSalesmanService.selectHbdSalesmanById(id);
        if(hbdSalesman1!=null){
            HbdSalesmanMessqges hbdSalesmanMessqges = new HbdSalesmanMessqges();
            hbdSalesmanMessqges.setSalesmanId(hbdSalesman1.getId());
            hbdSalesmanMessqges.setSalesmanName(hbdSalesman1.getsName());
            hbdSalesmanMessqges.setSmType(Long.parseLong(smType));
            hbdSalesmanMessqges.setSmMoney(Double.parseDouble(smMoney));
            hbdSalesmanMessqges.setRemark(remark);
            hbdSalesmanMessqges.setState(0L);
            hbdSalesmanMessqges.setCreateTime(new Date());
            hbdSalesmanMessqgesService.insertHbdSalesmanMessqges(hbdSalesmanMessqges);
        }

        System.out.println(salesmanId);
        return toAjax(1);
    }*/


    @GetMapping("/selectSchoolCompanyListToWeb")
    @CrossOrigin
    @ResponseBody
    public AjaxResult selectSchoolCompanyListToWeb(Integer state,  Integer schoolId,String chargeCode,String ids) {
        List<SchoolCompany> list = new ArrayList();
        List<SchoolCompany> list2 = new ArrayList();
        SchoolCompany xpxCompany = null;
        SchoolCompany jtxCompany = null;
        SchoolCompany jhrCompany = null;
        SchoolCompany xwxCompany = null;
        if(ids!=null){
            String[] riskCodes = ids.split(",");
            List<String> riskCodeList = new ArrayList<>();
            for (int i = 0;i<riskCodes.length;i++){
                riskCodeList.add(riskCodes[i]);
            }
            list = schoolCompanyService.selectSchoolCompanyListToWeb(state,schoolId,chargeCode,riskCodeList);
            if(list.size()>0){
                for (int j = 0; j < list.size() ;j++) {
                    if(list.get(j).getRiskCode().equals("01")){
                        xpxCompany = list.get(j);
                    }
                    if(list.get(j).getRiskCode().equals("08")){
                        jtxCompany = list.get(j);
                    }
                    if(list.get(j).getRiskCode().equals("05")){
                        jhrCompany = list.get(j);
                    }
                    if(list.get(j).getRiskCode().equals("14")){
                        xwxCompany = list.get(j);
                    }
                }
            }
        }
        list2.add(xpxCompany);
        list2.add(jtxCompany);
        list2.add(jhrCompany);
        list2.add(xwxCompany);

        return AjaxResult.success("获取学校承保信息成功",list2);
    }
}
