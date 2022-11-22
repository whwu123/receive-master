package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.Claim;

/**
 * 信息管理Mapper接口
 * 
 * @author wuchunhui
 * @date 2022-05-07
 */
public interface ClaimMapper 
{
    /**
     * 查询信息管理
     * 
     * @param id 信息管理主键
     * @return 信息管理
     */
    public Claim selectClaimById(Long id);

    /**
     * 查询信息管理列表
     * 
     * @param claim 信息管理
     * @return 信息管理集合
     */
    public List<Claim> selectClaimList(Claim claim);

    /**
     * 新增信息管理
     * 
     * @param claim 信息管理
     * @return 结果
     */
    public int insertClaim(Claim claim);

    /**
     * 修改信息管理
     * 
     * @param claim 信息管理
     * @return 结果
     */
    public int updateClaim(Claim claim);

    /**
     * 删除信息管理
     * 
     * @param id 信息管理主键
     * @return 结果
     */
    public int deleteClaimById(Long id);

    /**
     * 批量删除信息管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteClaimByIds(String[] ids);
}
