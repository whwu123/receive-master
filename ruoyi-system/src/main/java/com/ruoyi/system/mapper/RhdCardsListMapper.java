package com.ruoyi.system.mapper;

import java.util.List;

import com.ruoyi.system.domain.PhoneNumbers;
import com.ruoyi.system.domain.RhdCardsList;

/**
 * cardsListMapper接口
 * 
 * @author ruoyi
 * @date 2022-12-29
 */
public interface RhdCardsListMapper 
{
    /**
     * 查询cardsList
     * 
     * @param id cardsList主键
     * @return cardsList
     */
    public RhdCardsList selectRhdCardsListById(Long id);

    public RhdCardsList selectRhdCardsListByPhoneNumber(String phoneNumber);

    /**
     * 查询cardsList列表
     * 
     * @param rhdCardsList cardsList
     * @return cardsList集合
     */
    public List<RhdCardsList> selectRhdCardsListList(RhdCardsList rhdCardsList);

    /**
     * 新增cardsList
     * 
     * @param rhdCardsList cardsList
     * @return 结果
     */
    public int insertRhdCardsList(RhdCardsList rhdCardsList);

    /**
     * 修改cardsList
     * 
     * @param rhdCardsList cardsList
     * @return 结果
     */
    public int updateRhdCardsList(RhdCardsList rhdCardsList);

    /**
     * 删除cardsList
     * 
     * @param id cardsList主键
     * @return 结果
     */
    public int deleteRhdCardsListById(Long id);

    /**
     * 批量删除cardsList
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRhdCardsListByIds(String[] ids);

    /**
     * 批量删除cardsList
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRhdCardsListByDeviceCodeStr(String deviceCodeStr);


    /**
     * 根据项目名称和数量提取手机号
     */
    public List<PhoneNumbers> selectPhoneNumberCount(RhdCardsList rhdCardsList);

    /**
     * 根据手机号获取项目名称和ID
     */
    public PhoneNumbers getProjectByPhoneNumber(String phoneNumber);
}
