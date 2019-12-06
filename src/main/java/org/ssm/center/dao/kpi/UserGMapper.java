package org.ssm.center.dao.kpi;

import java.util.List;
import org.ssm.center.pojo.kpi.UserG;

public interface UserGMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserG record);

    UserG selectByPrimaryKey(Integer id);

    List<UserG> selectAll();

    int updateByPrimaryKey(UserG record);
}