package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RhdOperationPageMapper;
import com.ruoyi.system.domain.RhdOperationPage;
import com.ruoyi.system.service.IRhdOperationPageService;
import com.ruoyi.common.core.text.Convert;

/**
 * operatorPageService业务层处理
 * 
 * @author wch
 * @date 2022-11-24
 */
@Service
public class RhdOperationPageServiceImpl implements IRhdOperationPageService 
{
    @Autowired
    private RhdOperationPageMapper rhdOperationPageMapper;

    /**
     * 查询operatorPage
     * 
     * @param id operatorPage主键
     * @return operatorPage
     */
    @Override
    public RhdOperationPage selectRhdOperationPageById(Long id)
    {
        return rhdOperationPageMapper.selectRhdOperationPageById(id);
    }

    /**
     * 查询operatorPage列表
     * 
     * @param rhdOperationPage operatorPage
     * @return operatorPage
     */
    @Override
    public List<RhdOperationPage> selectRhdOperationPageList(RhdOperationPage rhdOperationPage)
    {
        return rhdOperationPageMapper.selectRhdOperationPageList(rhdOperationPage);
    }

    /**
     * 新增operatorPage
     * 
     * @param rhdOperationPage operatorPage
     * @return 结果
     */
    @Override
    public int insertRhdOperationPage(RhdOperationPage rhdOperationPage)
    {
        rhdOperationPage.setCreateTime(DateUtils.getNowDate());
        return rhdOperationPageMapper.insertRhdOperationPage(rhdOperationPage);
    }

    /**
     * 修改operatorPage
     * 
     * @param rhdOperationPage operatorPage
     * @return 结果
     */
    @Override
    public int updateRhdOperationPage(RhdOperationPage rhdOperationPage)
    {
        rhdOperationPage.setUpdateTime(DateUtils.getNowDate());
        return rhdOperationPageMapper.updateRhdOperationPage(rhdOperationPage);
    }

    /**
     * 批量删除operatorPage
     * 
     * @param ids 需要删除的operatorPage主键
     * @return 结果
     */
    @Override
    public int deleteRhdOperationPageByIds(String ids)
    {
        return rhdOperationPageMapper.deleteRhdOperationPageByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除operatorPage信息
     * 
     * @param id operatorPage主键
     * @return 结果
     */
    @Override
    public int deleteRhdOperationPageById(Long id)
    {
        return rhdOperationPageMapper.deleteRhdOperationPageById(id);
    }
}
