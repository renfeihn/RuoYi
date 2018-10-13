package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.common.annotation.DataScope;
import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.support.Convert;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.domain.SysUser;

/**
 * 用户 业务层
 *
 * @author renfei
 */
public interface ISysUserService {
    /**
     * 根据条件分页查询用户对象
     *
     * @param user 用户信息
     * @return 用户信息集合信息
     */
    public List<SysUser> selectUserList(SysUser user);

    /**
     * 通过用户名查询用户
     *
     * @param userName 用户名
     * @return 用户对象信息
     */
    public SysUser selectUserByLoginName(String userName);

    /**
     * 通过手机号码查询用户
     *
     * @param phoneNumber 用户名
     * @return 用户对象信息
     */
    public SysUser selectUserByPhoneNumber(String phoneNumber) ;

    /**
     * 通过邮箱查询用户
     *
     * @param email 邮箱
     * @return 用户对象信息
     */
    public SysUser selectUserByEmail(String email);

    /**
     * 通过用户ID查询用户
     *
     * @param userId 用户ID
     * @return 用户对象信息
     */
    public SysUser selectUserById(Long userId);

    /**
     * 通过用户ID删除用户
     *
     * @param userId 用户ID
     * @return 结果
     */
    public int deleteUserById(Long userId) ;

    /**
     * 批量删除用户信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteUserByIds(String ids) throws Exception ;

    /**
     * 新增保存用户信息
     *
     * @param user 用户信息
     * @return 结果
     */
    public int insertUser(SysUser user) ;

    /**
     * 修改保存用户信息
     *
     * @param user 用户信息
     * @return 结果
     */
    public int updateUser(SysUser user) ;

    /**
     * 修改用户个人详细信息
     *
     * @param user 用户信息
     * @return 结果
     */
    public int updateUserInfo(SysUser user);

    /**
     * 修改用户密码
     *
     * @param user 用户信息
     * @return 结果
     */
    public int resetUserPwd(SysUser user);


    /**
     * 校验用户名称是否唯一
     *
     * @param loginName 用户名
     * @return
     */
    public String checkLoginNameUnique(String loginName);

    /**
     * 校验用户名称是否唯一
     *
     * @param user 用户名
     * @return
     */
    public String checkPhoneUnique(SysUser user) ;

    /**
     * 校验email是否唯一
     *
     * @param user 用户名
     * @return
     */
    public String checkEmailUnique(SysUser user) ;
}
