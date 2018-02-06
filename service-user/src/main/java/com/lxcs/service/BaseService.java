package com.lxcs.service;

import com.lxcs.mybatis.bean.auto.*;
import com.lxcs.util.sql.*;
import com.lxcs.web.CustomMapper;
import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shuai on 2017/11/6.
 */
public class BaseService extends CustomMapper {


    /**
     * 获取用户信息
     *
     * @return
     */
    public CMUser getUserByUserId(String userId) {
        if (StringUtils.isBlank(userId)) {
            return null;
        }
        CMUserExample example = new CMUserExample();
        CMUserExample.Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(userId);
        List<CMUser> cmUser = this.cmuserMapper.selectByExample(example);
        if (cmUser != null && cmUser.size() == 1) {
            return cmUser.get(0);
        } else {
            return null;
        }
    }
}
