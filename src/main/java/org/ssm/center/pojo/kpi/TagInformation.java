package org.ssm.center.pojo.kpi;

public class TagInformation {
    private Integer id;

    private String tag;

    private String tagRqs;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag == null ? null : tag.trim();
    }

    public String getTagRqs() {
        return tagRqs;
    }

    public void setTagRqs(String tagRqs) {
        this.tagRqs = tagRqs == null ? null : tagRqs.trim();
    }
}