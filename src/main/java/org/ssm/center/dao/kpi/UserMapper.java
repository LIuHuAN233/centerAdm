package org.ssm.center.dao.kpi;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Handler;

import org.apache.ibatis.annotations.Param;
import org.ssm.center.pojo.kpi.User;

public interface UserMapper {
    int deleteByPrimaryKey(@Param("uId") Integer uId, @Param("uSid") String uSid);

    int insert(User record);

    int selectOneUserStatus(String sId);

    Integer selectOneUserRange(String uSid);

    User selectByUserName(String sId);

    int selectOneUserLevel(String sId);

    List<User> getAllAssessPerson(Integer uLevel);

    User selectByPrimaryKey(@Param("uId") Integer uId, @Param("uSid") String uSid);

    List<User> selectAll();

    ArrayList<User> selectBatchUser(String[] arrId);

    int changeUserInformation(HashMap<String,Object> hashMap);

    int updateByPrimaryKey(User record);

    int insertNewUser(HashMap<String,Object> hashMap);

    int updatePasswordNormal(HashMap<String,Object> hashMap);

    List<User> selectAllUser();

    List<User> selectAllUserWithG();
}