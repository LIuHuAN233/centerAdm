package org.ssm.center.pojo.kpi;

import java.util.Date;

public class Kpi {
    private Integer id;

    private String sId;

    private float value;

    private Date updateTime;

    private String kNumber;

    private String kGroupName;

    private User user;

    private String kLevel;



    @Override
    public String toString() {
        return "Kpi{" +
                "id=" + id +
                ", sId=" + sId +
                ", value=" + value +
                ", updateTime=" + updateTime +
                ", kNumber='" + kNumber + '\'' +
                ", kGroupName='" + kGroupName + '\'' +
                ", user=" + user +
                '}';
    }

    public String getkLevel() {
        return kLevel;
    }

    public void setkLevel(String kLevel) {
        this.kLevel = kLevel;
    }

    public User getUser() {
        return user;
    }

    public String getkGroupName() {
        return kGroupName;
    }

    public void setkGroupName(String kGroupName) {
        this.kGroupName = kGroupName;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getkNumber() {
        return kNumber;
    }

    public void setkNumber(String kNumber) {
        this.kNumber = kNumber;
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