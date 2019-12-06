package org.ssm.center.pojo.kpi;

public class KpiLevel {
    private Integer id;

    private String kGroupName;

    private String kpiLevel;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getkGroupName() {
        return kGroupName;
    }

    public void setkGroupName(String kGroupName) {
        this.kGroupName = kGroupName == null ? null : kGroupName.trim();
    }

    public String getKpiLevel() {
        return kpiLevel;
    }

    public void setKpiLevel(String kpiLevel) {
        this.kpiLevel = kpiLevel == null ? null : kpiLevel.trim();
    }
}