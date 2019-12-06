package org.ssm.center.pojo.kpi;

public class KGroup {
    private Integer id;

    private String kGroup;

    private String kGroupName;

    private String kGroupId;

    public String getkGroupId() {
        return kGroupId;
    }

    public void setkGroupId(String kGroupId) {
        this.kGroupId = kGroupId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getkGroup() {
        return kGroup;
    }

    public void setkGroup(String kGroup) {
        this.kGroup = kGroup == null ? null : kGroup.trim();
    }

    public String getkGroupName() {
        return kGroupName;
    }

    public void setkGroupName(String kGroupName) {
        this.kGroupName = kGroupName == null ? null : kGroupName.trim();
    }
}