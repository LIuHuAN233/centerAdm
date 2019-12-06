package org.ssm.center.dao.kpi;

import java.util.List;
import org.ssm.center.pojo.kpi.KpiSet;

public interface KpiSetMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(KpiSet record);

    int checkStatus();

    int changeStatus(Integer start);

    KpiSet selectByPrimaryKey(Integer id);

    List<KpiSet> selectAll();

    int updateByPrimaryKey(KpiSet record);
}