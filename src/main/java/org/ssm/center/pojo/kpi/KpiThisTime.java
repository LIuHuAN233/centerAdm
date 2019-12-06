package org.ssm.center.pojo.kpi;

import java.util.Date;

public class KpiThisTime {
    private Integer id;

    private String sId;

    private String bsId;

    private float value;

    private Date updateTime;

    private String kpiNumber;

    private float avgValue;


    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public float getAvgValue() {
        return avgValue;
    }

    public void setAvgValue(float avgValue) {
        this.avgValue = avgValue;
    }

    @Override
    public String toString() {
        return "KpiThisTime{" +
                "id=" + id +
                ", sId=" + sId +
                ", bsId=" + bsId +
                ", value=" + value +
                ", updateTime=" + updateTime +
                ", kpiNumber='" + kpiNumber + '\'' +
                ", avgValue=" + avgValue +
                '}';
    }



    public String getKpiNumber() {
        return kpiNumber;
    }

    public void setKpiNumber(String kipNumber) {
        this.kpiNumber = kipNumber;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getsId() {
        return sId;
    }

    public void setsId(String sId) {
        this.sId = sId;
    }

    public String getBsId() {
        return bsId;
    }

    public void setBsId(String bsId) {
        this.bsId = bsId;
    }

    public float getValue() {
        return value;
    }

    public void setValue(float value) {
        this.value = value;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}