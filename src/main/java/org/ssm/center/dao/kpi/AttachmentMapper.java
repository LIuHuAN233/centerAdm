package org.ssm.center.dao.kpi;

import java.util.List;
import org.ssm.center.pojo.kpi.Attachment;

public interface AttachmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Attachment record);

    Attachment selectByPrimaryKey(Integer id);

    List<Attachment> selectAll();

    int updateByPrimaryKey(Attachment record);
}