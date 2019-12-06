package org.ssm.center.dao.kpi;

import java.util.List;
import org.ssm.center.pojo.kpi.PmRate;

public interface PmRateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PmRate record);

    PmRate selectByPrimaryKey(Integer id);

    List<PmRate> selectAll();

    int updateByPrimaryKey(PmRate record);

    int updateOneRate(PmRate record);

    int deleteOneByRId(int rId);
}