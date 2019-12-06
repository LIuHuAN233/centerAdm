package org.ssm.center.pojo.kpi;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PmProject {
    private Integer id;

    private String pName;

    private String pCode;

    private String pUserName;

    private String pUserId;

    private Date pStartTime;

    private Date pEndTime;

    private String pFileName;

    private String pFilePath;

    private String pFatherName;

    private Integer pFatherId;

    private Integer pStatus;

    private Integer pIsFinish;

    private Date pStatusTime;

    private Date pFinishTime;

    private String pTaskName;

    private String pTaskCode;

    private String pTaskBegin;

    private String pTaskEnd;

    private Date createTime;

    private String leader;

    private List<PmRate> pmRateList;

    private Integer pLevel;

    @Override
    public String toString() {
        return "PmProject{" +
                "id=" + id +
                ", pName='" + pName + '\'' +
                ", pCode='" + pCode + '\'' +
                ", pUserName='" + pUserName + '\'' +
                ", pUserId='" + pUserId + '\'' +
                ", pStartTime=" + pStartTime +
                ", pEndTime=" + pEndTime +
                ", pFileName='" + pFileName + '\'' +
                ", pFilePath='" + pFilePath + '\'' +
                ", pFatherName='" + pFatherName + '\'' +
                ", pFatherId=" + pFatherId +
                ", pStatus=" + pStatus +
                ", pIsFinish=" + pIsFinish +
                ", pStatusTime=" + pStatusTime +
                ", pFinishTime=" + pFinishTime +
                ", pTaskName='" + pTaskName + '\'' +
                ", pTaskCode='" + pTaskCode + '\'' +
                ", pTaskBegin='" + pTaskBegin + '\'' +
                ", pTaskEnd='" + pTaskEnd + '\'' +
                ", createTime=" + createTime +
                ", leader='" + leader + '\'' +
                ", pmRateList=" + pmRateList +
                ", pLevel=" + pLevel +
                '}';
    }

    public Integer getpLevel() {
        return pLevel;
    }

    public void setpLevel(Integer pLevel) {
        this.pLevel = pLevel;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getLeader() {
        return leader;
    }

    public void setLeader(String leader) {
        this.leader = leader;
    }

    public List<PmRate> getPmRateList() {
        return pmRateList;
    }

    public void setPmRateList(List<PmRate> pmRateList) {
        this.pmRateList = pmRateList;
    }

    public Integer getpStatus() {
        return pStatus;
    }

    public void setpStatus(Integer pStatus) {
        this.pStatus = pStatus;
    }

    public Integer getpIsFinish() {
        return pIsFinish;
    }

    public void setpIsFinish(Integer pIsFinish) {
        this.pIsFinish = pIsFinish;
    }

    public Date getpStatusTime() {
        return pStatusTime;
    }

    public void setpStatusTime(Date pStatusTime) {
        this.pStatusTime = pStatusTime;
    }

    public Date getpFinishTime() {
        return pFinishTime;
    }

    public void setpFinishTime(Date pFinishTime) {
        this.pFinishTime = pFinishTime;
    }

    public String getpTaskName() {
        return pTaskName;
    }

    public void setpTaskName(String pTaskName) {
        this.pTaskName = pTaskName;
    }

    public String getpTaskCode() {
        return pTaskCode;
    }

    public void setpTaskCode(String pTaskCode) {
        this.pTaskCode = pTaskCode;
    }

    public String getpTaskBegin() {
        return pTaskBegin;
    }

    public void setpTaskBegin(String pTaskBegin) {
        this.pTaskBegin = pTaskBegin;
    }

    public String getpTaskEnd() {
        return pTaskEnd;
    }

    public void setpTaskEnd(String pTaskEnd) {
        this.pTaskEnd = pTaskEnd;
    }

    public String getpFatherName() {
        return pFatherName;
    }

    public void setpFatherName(String pFatherName) {
        this.pFatherName = pFatherName;
    }

    public Integer getpFatherId() {
        return pFatherId;
    }

    public void setpFatherId(Integer pFatherId) {
        this.pFatherId = pFatherId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName == null ? null : pName.trim();
    }

    public String getpCode() {
        return pCode;
    }

    public void setpCode(String pCode) {
        this.pCode = pCode == null ? null : pCode.trim();
    }

    public String getpUserName() {
        return pUserName;
    }

    public void setpUserName(String pUserName) {
        this.pUserName = pUserName == null ? null : pUserName.trim();
    }

    public String getpUserId() {
        return pUserId;
    }

    public void setpUserId(String pUserId) {
        this.pUserId = pUserId == null ? null : pUserId.trim();
    }

    public Date getpStartTime() {
        return pStartTime;
    }

    public void setpStartTime(Date pStartTime) {
        this.pStartTime = pStartTime;
    }

    public Date getpEndTime() {
        return pEndTime;
    }

    public void setpEndTime(Date pEndTime) {
        this.pEndTime = pEndTime;
    }

    public String getpFileName() {
        return pFileName;
    }

    public void setpFileName(String pFileName) {
        this.pFileName = pFileName == null ? null : pFileName.trim();
    }

    public String getpFilePath() {
        return pFilePath;
    }

    public void setpFilePath(String pFilePath) {
        this.pFilePath = pFilePath == null ? null : pFilePath.trim();
    }
}