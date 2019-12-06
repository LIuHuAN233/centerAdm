package org.ssm.center.dao.kpi;

import java.util.HashMap;
import java.util.List;
import org.ssm.center.pojo.kpi.KRelation;

public interface KRelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(KRelation record);

    KRelation selectByPrimaryKey(Integer id);

    List<KRelation> selectAllRelation();

    int deleteOneGroupRelation(String delName);

    List<KRelation> selectAllIsUse();

    int updateByPrimaryKey(KRelation record);

    int insertNewRelation(HashMap<String,Object> hashMap);
}