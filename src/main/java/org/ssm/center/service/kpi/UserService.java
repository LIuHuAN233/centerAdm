package org.ssm.center.service.kpi;

import org.ssm.center.pojo.kpi.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface UserService {

    List<User> selectAllUser();

    List<User> selectAllUserWithG();

    Integer selectOneUserStatus(String sId);

    User selectByUserName(String sId);

    int selectOneUserLevel(String sId);

    List<User> getAllAssessPerson(Integer uLevel);

    Integer selectOneUserRange(String uSid);

    List<User> selectAll();

    ArrayList<User> selectBatchUser(String[] arrId);

    /*修改成员属性*/
    int changeUserInformation(HashMap<String,Object> hashMap);

    int updatePasswordNormal(HashMap<String,Object> hashMap);

    /*新增成员*/
    int insertNewUser(HashMap<String,Object> hashMap);
}
