package org.ssm.center.service.kpi.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssm.center.dao.kpi.*;
import org.ssm.center.pojo.kpi.*;
import org.ssm.center.service.kpi.KpiService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Slf4j
@Service
public class kpiServiceImpl implements KpiService {

    @Autowired
    KpiSetMapper kpiSetMapper;

    @Autowired
    KGroupMapper kGroupMapper;

    @Autowired
    KRelationMapper kRelationMapper;

    @Autowired
    KRecordMapper kRecordMapper;

    @Autowired
    KpiThisTimeMapper kpiThisTimeMapper;

    @Autowired
    KpiMapper kpiMapper;

    @Autowired
    UserMapper userMapper;

    @Autowired
    KpiLevelMapper kpiLevelMapper;

    @Override
    public int checkStatus() {
       return kpiSetMapper.checkStatus();
    }

    @Override
    public int changeStatus(Integer start) {
       return kpiSetMapper.changeStatus(start);
    }

    @Override
    public List<KGroup> selectAllGroupName() {
        return kGroupMapper.selectAllGroupName();
    }

    @Override
    public List<KRelation> selectAllRelation() {
        return kRelationMapper.selectAllRelation();
    }

    @Override
    public int deleteOneGroupRelation(String delName) {
        return kRelationMapper.deleteOneGroupRelation(delName);
    }

    @Override
    public int addNewGroup(HashMap<String, Object> hashMap) {
        return kGroupMapper.addNewGroup(hashMap);
    }

    @Override
    public int updateGroup(HashMap<String, Object> hashMap) {
        return kGroupMapper.updateGroup(hashMap);
    }

    @Override
    public int deleteOneGroup(String delName) {
        return kGroupMapper.deleteOneGroup(delName);
    }

    @Override
    public int insertNewRelation(HashMap<String, Object> hashMap) {
        return kRelationMapper.insertNewRelation(hashMap);
    }

    @Override
    public List<KRelation> selectAllIsUse() {
        return kRelationMapper.selectAllIsUse();
    }

    @Override
    public KGroup selectOneGroup(String kGroupName) {
        return kGroupMapper.selectOneGroup(kGroupName);
    }

    @Override
    public List<KGroup> selectAllGroup() {
        return kGroupMapper.selectAllGroup();
    }

    /*测评记录*/
    @Override
    public int insertOneRecord(HashMap<String, Object> hashMap) {
        return kRecordMapper.insertOneRecord(hashMap);
    }

    @Override
    public String selectByStatus() {
        return kRecordMapper.selectByStatus();
    }

    @Override
    public int updateEndTime(HashMap<String, Object> hashMap) {
        return kRecordMapper.updateEndTime(hashMap);
    }

    @Override
    public KRecord selectByKpiNumber(String kpiNumber) {
        return kRecordMapper.selectByKpiNumber(kpiNumber);
    }

    /*当次考核*/
    @Override
    public int insertOneThisTime(HashMap<String, Object> hashMap) {
        return kpiThisTimeMapper.insertOneThisTime(hashMap);
    }

    @Override
    public int updateOneKpiThis(HashMap<String, Object> hashMap) {
        return kpiThisTimeMapper.updateOneKpiThis(hashMap);
    }

    @Override
    public List<KpiThisTime> selectOneExist(HashMap<String, Object> hashMap) {
        return kpiThisTimeMapper.selectOneExist(hashMap);
    }

    @Override
    public List<KpiThisTime> selectAllThisTimeMe(HashMap<String, Object> hashMap) {
        return kpiThisTimeMapper.selectAllThisTimeMe(hashMap);
    }

    @Override
    public KpiThisTime selectOneThisTime(HashMap<String, Object> hashMap) {
        return kpiThisTimeMapper.selectOneThisTime(hashMap);
    }

    /*查询*/
    @Override
    public List<Kpi> selectAllKpi() {
        return kpiMapper.selectAllKpi();
    }

    @Override
    public List<Kpi> selectKpiOneUser(String sId) {
        return kpiMapper.selectKpiOneUser(sId);
    }

    @Override
    public List<Kpi> selectKpiOneTime(String kNumber) {
        return kpiMapper.selectKpiOneTime(kNumber);
    }

    @Override
    public List<Kpi> selectKpiOneUserOneTime(HashMap<String, Object> hashMap) {
        return kpiMapper.selectKpiOneUserOneTime(hashMap);
    }

    @Override
    public Kpi selectKpiOneUserOneTime1(HashMap<String, Object> hashMap) {
        return kpiMapper.selectKpiOneUserOneTime1(hashMap);
    }


    @Override
    public List<Kpi> selectKpiExist(String kpiNumber) {
        return kpiMapper.selectKpiExist(kpiNumber);
    }

    @Override
    public List<KpiThisTime> groupAvgKpi(String kpiNumber) {
        return kpiThisTimeMapper.groupAvgKpi(kpiNumber);
    }

    @Override
    public int insertOneKpi(KpiThisTime kpiThisTime) {
        return kpiMapper.insertOneKpi(kpiThisTime);
    }

    @Override
    public List<Kpi> selectOneGroupAll(String[] groupUser) {
        return kpiMapper.selectOneGroupAll(groupUser);
    }

    @Override
    public List<Kpi> selectOneGroupOneTime(Map<String,Object> hashmap) {
        return kpiMapper.selectOneGroupOneTime(hashmap);//编写时写错为return selectOneGroupOneTime(hashmap),出现无限递归堆栈溢出
    }


    @Override
    public int updateOneKpi(HashMap<String, Object> hashMap) {
        return kpiMapper.updateOneKpi(hashMap);
    }
    /*绩效等级*/
    @Override
    public String selectKpiLevel(String kGroupName) {
        return kpiLevelMapper.selectKpiLevel(kGroupName);
    }




    /*历史成绩*/
    /*修改成员属性*/






    /*查询*/





}
