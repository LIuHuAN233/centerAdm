package org.ssm.center.dao.kpi;

import java.util.List;
import org.ssm.center.pojo.kpi.BlogTags;

public interface BlogTagsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogTags record);

    BlogTags selectByPrimaryKey(Integer id);

    List<BlogTags> selectAll();

    int updateByPrimaryKey(BlogTags record);

    List<BlogTags> selectAllTag();
}