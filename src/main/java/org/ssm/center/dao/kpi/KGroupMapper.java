package org.ssm.center.dao.kpi;

import java.util.HashMap;
import java.util.List;
import org.ssm.center.pojo.kpi.KGroup;

public interface KGroupMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(KGroup record);

    int addNewGroup(HashMap<String,Object> hashMap);

    List<KGroup> selectAllGroupName();

    int deleteOneGroup(String delName);

    KGroup selectByPrimaryKey(Integer id);

    List<KGroup> selectAllGroup();

    int updateGroup(HashMap<String,Object> hashMap);

    int updateByPrimaryKey(KGroup record);

    KGroup selectOneGroup(String kGroupName);
}