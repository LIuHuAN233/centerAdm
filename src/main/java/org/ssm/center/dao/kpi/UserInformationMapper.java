package org.ssm.center.dao.kpi;

import java.util.List;
import org.ssm.center.pojo.kpi.UserInformation;

public interface UserInformationMapper {
    int deleteByPrimaryKey(Integer uiId);

    int insert(UserInformation record);

    UserInformation selectByPrimaryKey(Integer uiId);

    List<UserInformation> selectAll();

    int updateOneUser(UserInformation userInformation);

    int updateByPrimaryKey(UserInformation record);
}