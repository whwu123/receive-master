package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ClaimMapper;
import com.ruoyi.system.domain.Claim;
import com.ruoyi.system.service.IClaimService;
import com.ruoyi.common.core.text.Convert;

/**
 * 信息管理Service业务层处理
 * 
 * @author wuchunhui
 * @date 2022-05-07
 */
@Service
public class ClaimServiceImpl implements IClaimService 
{
    @Autowired
    private ClaimMapper claimMapper;

    /**
     * 查询信息管理
     * 
     * @param id 信息管理主键
     * @return 信息管理
     */
    @Override
    public Claim selectClaimById(Long id)
    {
        return claimMapper.selectClaimById(id);
    }

    /**
     * 查询信息管理列表
     * 
     * @param claim 信息管理
     * @return 信息管理
     */
    @Override
    public List<Claim> selectClaimList(Claim claim)
    {
        return claimMapper.selectClaimList(claim);
    }

    /**
     * 新增信息管理
     * 
     * @param claim 信息管理
     * @return 结果
     */
    @Override
    public int insertClaim(Claim claim)
    {
        claim.setCreateTime(DateUtils.getNowDate());
        return claimMapper.insertClaim(claim);
    }

    /**
     * 修改信息管理
     * 
     * @param claim 信息管理
     * @return 结果
     */
    @Override
    public int updateClaim(Claim claim)
    {
        claim.setUpdateTime(DateUtils.getNowDate());
        return claimMapper.updateClaim(claim);
    }

    /**
     * 批量删除信息管理
     * 
     * @param ids 需要删除的信息管理主键
     * @return 结果
     */
    @Override
    public int deleteClaimByIds(String ids)
    {
        return claimMapper.deleteClaimByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除信息管理信息
     * 
     * @param id 信息管理主键
     * @return 结果
     */
    @Override
    public int deleteClaimById(Long id)
    {
        return claimMapper.deleteClaimById(id);
    }
}
