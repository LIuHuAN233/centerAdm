package org.ssm.center.dao.kpi;

import java.util.List;

import org.ssm.center.pojo.kpi.BlogInformation;
import org.ssm.center.pojo.kpi.TagInformation;

public interface TagInformationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TagInformation record);

    TagInformation selectByPrimaryKey(Integer id);

    List<TagInformation> selectAll();

    int updateByPrimaryKey(TagInformation record);

    List<TagInformation> showAllTag();

    TagInformation selectTagById(int id);
}