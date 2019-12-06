package org.ssm.center.dao.kpi;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ssm.center.pojo.kpi.Kpi;
import org.ssm.center.pojo.kpi.KpiThisTime;

public interface KpiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Kpi record);

    Kpi selectByPrimaryKey(Integer id);

    List<Kpi> selectAll();

    int updateByPrimaryKey(Kpi record);

    List<Kpi> selectAllKpi();

    List<Kpi> selectKpiOneUser(String sId);

    List<Kpi> selectKpiOneTime(String kNumber);

    List<Kpi> selectKpiOneUserOneTime(HashMap<String,Object> hashMap);

    Kpi selectKpiOneUserOneTime1(HashMap<String,Object> hashMap);

    List<Kpi> selectOneGroupAll(String[] groupUser);

    List<Kpi> selectOneGroupOneTime(Map<String,Object> hashmap);

    List<Kpi> selectKpiExist(String kpiNumber);

    int insertOneKpi(KpiThisTime kpiThisTime);

    int updateOneKpi(HashMap<String,Object> hashMap);
}