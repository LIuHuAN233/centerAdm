package org.ssm.center.service.pm.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssm.center.dao.kpi.PmProjectMapper;
import org.ssm.center.dao.kpi.PmRateMapper;
import org.ssm.center.pojo.kpi.PmProject;
import org.ssm.center.pojo.kpi.PmRate;
import org.ssm.center.service.pm.PmService;

import java.util.HashMap;
import java.util.List;

@Slf4j
@Service
public class PmServiceImpl implements PmService {

    @Autowired
    PmProjectMapper pmProjectMapper;

    @Autowired
    PmRateMapper pmRateMapper;
    @Override
    public int insert(PmProject pmProject) {
        return pmProjectMapper.insert(pmProject);
    }

    @Override
    public List<PmProject> selectAllPM(Integer isFinish) {
        return pmProjectMapper.selectAllPM(isFinish);
    }

    @Override
    public PmProject selectByPrimaryKey(Integer id) {
        return pmProjectMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteOneProject(Integer id) {
        return pmProjectMapper.deleteOneProject(id);
    }

    @Override
    public int updateByPrimaryKey(PmProject record) {
        return pmProjectMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<PmProject> selectOneSon(Integer id) {
        return pmProjectMapper.selectOneSon(id);
    }

    @Override
    public int updateFile(PmProject pmProject) {
        return pmProjectMapper.updateFile(pmProject);
    }

    @Override
    public int updateFatherName(HashMap<String, Object> fatherName) {
        return pmProjectMapper.updateFatherName(fatherName);
    }

    @Override
    public int insert(PmRate record) {
        return pmRateMapper.insert(record);
    }

    @Override
    public List<PmProject> selectOnePmWithRate(Integer id) {
        return pmProjectMapper.selectOnePmWithRate(id);
    }

    @Override
    public int updateOneRate(PmRate record) {
        return pmRateMapper.updateOneRate(record);
    }

    @Override
    public int deleteOneByRId(int rId) {
        return pmRateMapper.deleteOneByRId(rId);
    }

    @Override
    public List<PmProject> selectAllPMOneUser(String uId) {
        return pmProjectMapper.selectAllPMOneUser(uId);
    }

    @Override
    public int finishOneProject(List<Integer> list) {
        return pmProjectMapper.finishOneProject(list);
    }

    @Override
    public int finishOneProjectAll(List<Integer> list) {
        return pmProjectMapper.finishOneProjectAll(list);
    }

    @Override
    public int editFinalFatherStatus(List<Integer> list) {
        return pmProjectMapper.editFinalFatherStatus(list);
    }

    @Override
    public int editFinishStatus(List<Integer> list) {
        return pmProjectMapper.editFinishStatus(list);
    }

    @Override
    public List<Integer> selectAllFinalFatherId(Integer isFinish) {
        return pmProjectMapper.selectAllFinalFatherId(isFinish);
    }

    @Override
    public List<PmProject> selectAllPmDescByFinalId(List<Integer> list) {
        return pmProjectMapper.selectAllPmDescByFinalId(list);
    }

    @Override
    public int uploadFile(HashMap<String, Object> hashMap) {
        return pmProjectMapper.uploadFile(hashMap);
    }


}
