package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.NPerson;

/**
 * 队员管理Service接口
 * 
 * @author wuchunhui
 * @date 2022-05-16
 */
public interface INPersonService 
{
    /**
     * 查询队员管理
     * 
     * @param id 队员管理主键
     * @return 队员管理
     */
    public NPerson selectNPersonById(Long id);

    /**
     * 查询队员管理列表
     * 
     * @param nPerson 队员管理
     * @return 队员管理集合
     */
    public List<NPerson> selectNPersonList(NPerson nPerson);

    /**
     * 新增队员管理
     * 
     * @param nPerson 队员管理
     * @return 结果
     */
    public int insertNPerson(NPerson nPerson);

    /**
     * 修改队员管理
     * 
     * @param nPerson 队员管理
     * @return 结果
     */
    public int updateNPerson(NPerson nPerson);

    /**
     * 批量删除队员管理
     * 
     * @param ids 需要删除的队员管理主键集合
     * @return 结果
     */
    public int deleteNPersonByIds(String ids);

    /**
     * 删除队员管理信息
     * 
     * @param id 队员管理主键
     * @return 结果
     */
    public int deleteNPersonById(Long id);
}
