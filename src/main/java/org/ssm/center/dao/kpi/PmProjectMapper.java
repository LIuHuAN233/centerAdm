package org.ssm.center.dao.kpi;

import java.util.HashMap;
import java.util.List;
import org.ssm.center.pojo.kpi.PmProject;

public interface PmProjectMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PmProject record);

    PmProject selectByPrimaryKey(Integer id);

    List<PmProject> selectAll();

    int updateByPrimaryKey(PmProject record);

    List<PmProject> selectAllPM(Integer isFinish);

    int deleteOneProject(Integer id);

    List<PmProject> selectOneSon(Integer id);

    int updateFile(PmProject pmProject);

    int updateFatherName(HashMap<String,Object> fatherName);

    List<PmProject> selectOnePmWithRate(Integer id);

    List<PmProject> selectAllPMOneUser(String uId);

    int finishOneProject(List<Integer> list);

    int finishOneProjectAll(List<Integer> list);

    int editFinalFatherStatus(List<Integer> list);

    int editFinishStatus(List<Integer> list);

    List<Integer> selectAllFinalFatherId(Integer isFinish);

    List<PmProject> selectAllPmDescByFinalId(List<Integer> list);

    int  uploadFile(HashMap<String,Object> hashMap);

}