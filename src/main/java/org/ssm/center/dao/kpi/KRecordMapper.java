package org.ssm.center.dao.kpi;

import java.util.HashMap;
import java.util.List;
import org.ssm.center.pojo.kpi.KRecord;

public interface KRecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(KRecord record);

    int insertOneRecord(HashMap<String,Object> hashMap);

    String selectByStatus();

    KRecord selectByKpiNumber(String kpiNumber);

    int updateEndTime(HashMap<String,Object> hashMap);

    KRecord selectByPrimaryKey(Integer id);

    List<KRecord> selectAll();

    int updateByPrimaryKey(KRecord record);
}