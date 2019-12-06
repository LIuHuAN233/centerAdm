package org.ssm.center.dao.kpi;

import java.util.List;
import org.ssm.center.pojo.kpi.BlogInformation;

public interface BlogInformationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogInformation record);

    BlogInformation selectByPrimaryKey(Integer id);

    List<BlogInformation> selectAll();

    int updateByPrimaryKey(BlogInformation record);

    int addBlog(BlogInformation record);

    List<BlogInformation> getNewBlog();

    BlogInformation selectOneBlogById(int id);
}