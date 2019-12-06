package org.ssm.center.dao.kpi;

import java.util.HashMap;
import java.util.List;
import org.ssm.center.pojo.kpi.KpiThisTime;

public interface KpiThisTimeMapper {
    int deleteByPrimaryKey(Integer id);

    int insertOneThisTime(HashMap<String,Object> hashMap);

    int updateOneKpiThis(HashMap<String,Object> hashMap);

    List<KpiThisTime> selectOneExist(HashMap<String,Object> hashMap);

    List<KpiThisTime> selectAllThisTimeMe(HashMap<String,Object> hashMap);

    int insert(KpiThisTime record);

    KpiThisTime selectByPrimaryKey(Integer id);

    List<KpiThisTime> selectAll();

    int updateByPrimaryKey(KpiThisTime record);

    List<KpiThisTime> groupAvgKpi(String kpiNumber);

    KpiThisTime selectOneThisTime(HashMap<String,Object> hashMap);
}