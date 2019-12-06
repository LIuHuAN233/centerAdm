package org.ssm.center.dao.kpi;

import java.util.List;
import org.ssm.center.pojo.kpi.KpiLevel;

public interface KpiLevelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(KpiLevel record);

    KpiLevel selectByPrimaryKey(Integer id);

    List<KpiLevel> selectAll();

    int updateByPrimaryKey(KpiLevel record);

    String selectKpiLevel(String kGroupName);
}