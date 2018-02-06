package com.lxcs.service;

import com.lxcs.mybatis.bean.auto.*;
import com.lxcs.mybatis.bean.ext.ExtUserModel;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shuai on 2018/1/18.
 */
@Service
public class UserService extends BaseService {
    /**
     *  @PreAuthorize 注解适合进入方法前的权限验证， @PreAuthorize可以将登录用户的roles/permissions参数传到方法中。

     @PostAuthorize 注解使用并不多，在方法执行后再进行权限验证。
     所以它适合验证带有返回值的权限。Spring EL 提供 返回对象能够在表达式语言中获取返回的对象returnObject。
     * @throws Exception
     */
    @PostAuthorize("returnObject.type == authentication.name")
    public CMUser findById(int id) {
        return null;
    }


    @PreAuthorize("hasRole('ADMIN')")
    public void updateUser(CMUser user) {
    }


    @PreAuthorize("hasRole('ADMIN') AND hasRole('DBA')")
    public void deleteUser(int id) {
    }


    /**
     * 获取登陆
     *
     * @return
     */
    public ExtUserModel getExtUserByUserId(String userName) {
        if (StringUtils.isBlank(userName)) {
            return null;
        }
        CMUserExample example = new CMUserExample();
        CMUserExample.Criteria criteria = example.createCriteria();
        criteria.andUserNameEqualTo(userName);
        List<CMUser> cmUser = this.cmuserMapper.selectByExample(example);
        if (cmUser != null && cmUser.size() == 1) {
            ExtUserModel extUser = new ExtUserModel();
            BeanUtils.copyProperties(cmUser.get(0), extUser);
            return extUser;
        } else {
            return null;
        }
    }

    /**
     * 获取登陆用户角色
     *
     * @return
     */
    public List<CMRole> getRoleListByUserId(String userId) {
        if (StringUtils.isBlank(userId)) {
            return null;
        }
        CMUserRoleExample example = new CMUserRoleExample();
        CMUserRoleExample.Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(userId);
        List<CMUserRole> cmUserRole = this.cmuserroleMapper.selectByExample(example);
        if (cmUserRole != null && cmUserRole.size() > 0) {
            List<String> roleIdList = new ArrayList<>();
            for (CMUserRole userRole : cmUserRole) {
                roleIdList.add(userRole.getRoleId());
            }
            CMRoleExample example1 = new CMRoleExample();
            CMRoleExample.Criteria criteria1 = example1.createCriteria();
            criteria1.andRoleIdIn(roleIdList);
            List<CMRole> cmRoleList = this.cmroleMapper.selectByExample(example1);
            if (cmRoleList != null && cmRoleList.size() > 0) {
                return cmRoleList;
            } else {
                return null;
            }
        } else {
            return null;
        }
    }
}
