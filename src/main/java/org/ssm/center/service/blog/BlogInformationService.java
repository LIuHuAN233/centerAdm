package org.ssm.center.service.blog;

import org.ssm.center.pojo.kpi.BlogInformation;
import org.ssm.center.pojo.kpi.BlogTags;
import org.ssm.center.pojo.kpi.TagInformation;

import java.util.List;

public interface BlogInformationService {

    int addBlog(BlogInformation record);

    List<BlogInformation> getNewBlog();

    BlogInformation selectOneBlogById(int id);

    /*tag*/
    List<TagInformation> showAllTag();

    TagInformation selectTagById(int id);

    List<BlogTags> selectAllTag();
}
