package org.ssm.center.service.blog.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssm.center.dao.kpi.BlogInformationMapper;
import org.ssm.center.dao.kpi.BlogTagsMapper;
import org.ssm.center.dao.kpi.TagInformationMapper;
import org.ssm.center.pojo.kpi.BlogInformation;
import org.ssm.center.pojo.kpi.BlogTags;
import org.ssm.center.pojo.kpi.TagInformation;
import org.ssm.center.service.blog.BlogInformationService;

import java.util.List;

@Slf4j
@Service
public class BlogInformationServiceImpl implements BlogInformationService {

    @Autowired
    BlogInformationMapper blogInformationMapper;

    @Autowired
    TagInformationMapper tagInformationMapper;

    @Autowired
    BlogTagsMapper blogTagsMapper;

    @Override
    public int addBlog(BlogInformation record) {
        return blogInformationMapper.addBlog(record);
    }

    @Override
    public List<BlogInformation> getNewBlog() {
        return blogInformationMapper.getNewBlog();
    }

    @Override
    public BlogInformation selectOneBlogById(int id) {
        return blogInformationMapper.selectOneBlogById(id);
    }
    /*tag*/
    @Override
    public List<TagInformation> showAllTag() {
        return tagInformationMapper.showAllTag();
    }

    @Override
    public TagInformation selectTagById(int id) {
        return tagInformationMapper.selectTagById(id);
    }

    @Override
    public List<BlogTags> selectAllTag() {
        return blogTagsMapper.selectAllTag();
    }

}
