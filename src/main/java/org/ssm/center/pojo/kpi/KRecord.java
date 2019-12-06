package org.ssm.center.pojo.kpi;

import java.util.Date;

public class KRecord {
    private Integer id;

    private Date startTime;

    private Date endTime;

    private String kpiNumber;

    private Integer recordStatus;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getKpiNumber() {
        return kpiNumber;
    }

    public void setKpiNumber(String kpiNumber) {
        this.kpiNumber = kpiNumber == null ? null : kpiNumber.trim();
    }

    public Integer getRecordStatus() {
        return recordStatus;
    }

    public void setRecordStatus(Integer recordStatus) {
        this.recordStatus = recordStatus;
    }
}