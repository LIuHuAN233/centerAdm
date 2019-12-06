package org.ssm.center.service.kpi;

import org.ssm.center.pojo.kpi.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface KpiService {

    int checkStatus();

    int changeStatus(Integer start);

    List<KGroup> selectAllGroupName();

    List<KRelation> selectAllRelation();



    int deleteOneGroupRelation(String delName);

    int addNewGroup(HashMap<String,Object> hashMap);

    int updateGroup(HashMap<String,Object> hashMap);

    int deleteOneGroup(String delName);

    int insertNewRelation(HashMap<String,Object> hashMap);

    List<KRelation> selectAllIsUse();

    KGroup selectOneGroup(String kGroupName);

    List<KGroup> selectAllGroup();

    /*测评记录*/
    int insertOneRecord(HashMap<String,Object> hashMap);

    String selectByStatus();

    int updateEndTime(HashMap<String,Object> hashMap);

    KRecord selectByKpiNumber(String kpiNumber);

    /*当次测评*/
    int insertOneThisTime(HashMap<String,Object> hashMap);

    int updateOneKpiThis(HashMap<String,Object> hashMap);

    List<KpiThisTime> selectOneExist(HashMap<String,Object> hashMap);

    List<KpiThisTime> selectAllThisTimeMe(HashMap<String,Object> hashMap);

    KpiThisTime selectOneThisTime(HashMap<String,Object> hashMap);

    /*查询*/
    List<Kpi> selectAllKpi();

    List<Kpi> selectKpiOneUser(String sId);

    List<Kpi> selectKpiOneTime(String kNumber);

    List<Kpi> selectKpiOneUserOneTime(HashMap<String,Object> hashMap);

    Kpi selectKpiOneUserOneTime1(HashMap<String,Object> hashMap);

    List<Kpi> selectKpiExist(String kpiNumber);

    List<KpiThisTime> groupAvgKpi(String kpiNumber);

    int insertOneKpi(KpiThisTime kpiThisTime);

    List<Kpi> selectOneGroupAll(String[] groupUser);

    List<Kpi> selectOneGroupOneTime(Map<String,Object> hashmap);

    /*历史成绩*/
    int updateOneKpi(HashMap<String,Object> hashMap);

    /*绩效等级*/
    String selectKpiLevel(String kGroupName);



}
