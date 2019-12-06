package org.ssm.center.pojo.kpi;

public class GanttData {

    private Integer id;
    private  Integer parent;
    private Long start;
    private Long end;
    private String name;
    private String owner;

    @Override
    public String toString() {
        return "GanttData{" +
                "id=" + id +
                ", parent=" + parent +
                ", start=" + start +
                ", end=" + end +
                ", name='" + name + '\'' +
                ", owner='" + owner + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getParent() {
        return parent;
    }

    public void setParent(Integer parent) {
        this.parent = parent;
    }

    public Long getStart() {
        return start;
    }

    public void setStart(Long start) {
        this.start = start;
    }

    public Long getEnd() {
        return end;
    }

    public void setEnd(Long end) {
        this.end = end;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }
}
