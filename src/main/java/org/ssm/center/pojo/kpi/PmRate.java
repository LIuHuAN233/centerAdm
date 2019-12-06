package org.ssm.center.pojo.kpi;

import java.util.Date;

public class PmRate {
    private Integer rId;

    private Integer pId;

    private Date rDate;

    private String rName;

    private String rFilePath;

    private String rFileName;

    private String rRate;

    private String ruId;

    private String ruName;

    @Override
    public String toString() {
        return "PmRate{" +
                "rId=" + rId +
                ", pId=" + pId +
                ", rDate=" + rDate +
                ", rName='" + rName + '\'' +
                ", rFilePath='" + rFilePath + '\'' +
                ", rFileName='" + rFileName + '\'' +
                ", rRate='" + rRate + '\'' +
                ", ruId='" + ruId + '\'' +
                ", ruName='" + ruName + '\'' +
                '}';
    }

    public String getRuId() {
        return ruId;
    }

    public void setRuId(String ruId) {
        this.ruId = ruId;
    }

    public String getRuName() {
        return ruName;
    }

    public void setRuName(String ruName) {
        this.ruName = ruName;
    }

    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public Date getrDate() {
        return rDate;
    }

    public void setrDate(Date rDate) {
        this.rDate = rDate;
    }

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName == null ? null : rName.trim();
    }

    public String getrFilePath() {
        return rFilePath;
    }

    public void setrFilePath(String rFilePath) {
        this.rFilePath = rFilePath == null ? null : rFilePath.trim();
    }

    public String getrFileName() {
        return rFileName;
    }

    public void setrFileName(String rFileName) {
        this.rFileName = rFileName == null ? null : rFileName.trim();
    }

    public String getrRate() {
        return rRate;
    }

    public void setrRate(String rRate) {
        this.rRate = rRate == null ? null : rRate.trim();
    }
}