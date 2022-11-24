package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.RhdOperationPage;

/**
 * operatorPageService接口
 * 
 * @author wch
 * @date 2022-11-24
 */
public interface IRhdOperationPageService 
{
    /**
     * 查询operatorPage
     * 
     * @param id operatorPage主键
     * @return operatorPage
     */
    public RhdOperationPage selectRhdOperationPageById(Long id);

    /**
     * 查询operatorPage列表
     * 
     * @param rhdOperationPage operatorPage
     * @return operatorPage集合
     */
    public List<RhdOperationPage> selectRhdOperationPageList(RhdOperationPage rhdOperationPage);

    /**
     * 新增operatorPage
     * 
     * @param rhdOperationPage operatorPage
     * @return 结果
     */
    public int insertRhdOperationPage(RhdOperationPage rhdOperationPage);

    /**
     * 修改operatorPage
     * 
     * @param rhdOperationPage operatorPage
     * @return 结果
     */
    public int updateRhdOperationPage(RhdOperationPage rhdOperationPage);

    /**
     * 批量删除operatorPage
     * 
     * @param ids 需要删除的operatorPage主键集合
     * @return 结果
     */
    public int deleteRhdOperationPageByIds(String ids);

    /**
     * 删除operatorPage信息
     * 
     * @param id operatorPage主键
     * @return 结果
     */
    public int deleteRhdOperationPageById(Long id);
}
