package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RhdCardsListMapper;
import com.ruoyi.system.domain.RhdCardsList;
import com.ruoyi.system.service.IRhdCardsListService;
import com.ruoyi.common.core.text.Convert;

/**
 * cardsListService业务层处理
 * 
 * @author ruoyi
 * @date 2022-12-29
 */
@Service
public class RhdCardsListServiceImpl implements IRhdCardsListService 
{
    @Autowired
    private RhdCardsListMapper rhdCardsListMapper;

    /**
     * 查询cardsList
     * 
     * @param id cardsList主键
     * @return cardsList
     */
    @Override
    public RhdCardsList selectRhdCardsListById(Long id)
    {
        return rhdCardsListMapper.selectRhdCardsListById(id);
    }

    /**
     * 查询cardsList列表
     * 
     * @param rhdCardsList cardsList
     * @return cardsList
     */
    @Override
    public List<RhdCardsList> selectRhdCardsListList(RhdCardsList rhdCardsList)
    {
        return rhdCardsListMapper.selectRhdCardsListList(rhdCardsList);
    }

    /**
     * 新增cardsList
     * 
     * @param rhdCardsList cardsList
     * @return 结果
     */
    @Override
    public int insertRhdCardsList(RhdCardsList rhdCardsList)
    {
        rhdCardsList.setCreateTime(DateUtils.getNowDate());
        return rhdCardsListMapper.insertRhdCardsList(rhdCardsList);
    }

    /**
     * 修改cardsList
     * 
     * @param rhdCardsList cardsList
     * @return 结果
     */
    @Override
    public int updateRhdCardsList(RhdCardsList rhdCardsList)
    {
        rhdCardsList.setUpdateTime(DateUtils.getNowDate());
        return rhdCardsListMapper.updateRhdCardsList(rhdCardsList);
    }

    /**
     * 批量删除cardsList
     * 
     * @param ids 需要删除的cardsList主键
     * @return 结果
     */
    @Override
    public int deleteRhdCardsListByIds(String ids)
    {
        return rhdCardsListMapper.deleteRhdCardsListByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除cardsList信息
     * 
     * @param id cardsList主键
     * @return 结果
     */
    @Override
    public int deleteRhdCardsListById(Long id)
    {
        return rhdCardsListMapper.deleteRhdCardsListById(id);
    }
}
