package org.ssm.center.service.kpi.impl;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssm.center.dao.kpi.UserMapper;
import org.ssm.center.pojo.kpi.User;
import org.ssm.center.service.kpi.UserService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Slf4j
@Service
public class userServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> selectAllUser() {
        return userMapper.selectAllUser();
    }

    @Override
    public List<User> selectAllUserWithG() {
        return userMapper.selectAllUserWithG();
    }

    @Override
    public Integer selectOneUserStatus(String sId) {
        return userMapper.selectOneUserStatus(sId);
    }

    @Override
    public User selectByUserName(String sId) {
        return userMapper.selectByUserName(sId);
    }

    @Override
    public int selectOneUserLevel(String sId) {
        return userMapper.selectOneUserLevel(sId);
    }

    @Override
    public List<User> getAllAssessPerson(Integer uLevel) {
        return userMapper.getAllAssessPerson(uLevel);
    }

    @Override
    public Integer selectOneUserRange(String uSid) {
        return userMapper.selectOneUserRange(uSid);
    }

    @Override
    public List<User> selectAll() {
        return userMapper.selectAll();
    }

    @Override
    public ArrayList<User> selectBatchUser(String[] arrId) {
        return userMapper.selectBatchUser(arrId);
    }

    @Override
    public int changeUserInformation(HashMap<String, Object> hashMap) {
        return userMapper.changeUserInformation(hashMap);
    }

    @Override
    public int updatePasswordNormal(HashMap<String, Object> hashMap) {
        return userMapper.updatePasswordNormal(hashMap);
    }

    @Override
    public int insertNewUser(HashMap<String, Object> hashMap) {
        return userMapper.insertNewUser(hashMap);
    }


}
