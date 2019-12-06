package org.ssm.center.service.pm;

import org.ssm.center.pojo.kpi.PmProject;
import org.ssm.center.pojo.kpi.PmRate;

import java.util.HashMap;
import java.util.List;

public interface PmService {

    int insert(PmProject pmProject);

    List<PmProject> selectAllPM(Integer isFinish);

    PmProject selectByPrimaryKey(Integer id);

    int deleteOneProject(Integer id);

    int updateByPrimaryKey(PmProject record);

    List<PmProject> selectOneSon(Integer id);

    int updateFile(PmProject pmProject);

    int updateFatherName(HashMap<String,Object> fatherName);

    int insert(PmRate record);

    List<PmProject> selectOnePmWithRate(Integer id);

    int updateOneRate(PmRate record);

    int deleteOneByRId(int rId);

    List<PmProject> selectAllPMOneUser(String uId);

    int finishOneProject(List<Integer> list);

    int finishOneProjectAll(List<Integer> list);

    int editFinalFatherStatus(List<Integer> list);

    int editFinishStatus(List<Integer> list);

    List<Integer> selectAllFinalFatherId(Integer isFinish);

    List<PmProject> selectAllPmDescByFinalId(List<Integer> list);

    int  uploadFile(HashMap<String,Object> hashMap);
}
