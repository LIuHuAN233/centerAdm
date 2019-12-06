package org.ssm.center.pojo.kpi;

import java.util.Date;

public class UserInformation {
    private Integer uiId;

    private String uiUser;

    private Integer uiTelNumber;

    private Integer uiSnum;

    private String uiEmail;

    private Integer uiSid;

    private Date uiRegisterTime;

    private String uiLastLoginIp;

    private Date uiLastLoginTime;

    private String uiCollege;

    private String uiSubject;

    private String uiTeacher;

    @Override
    public String toString() {
        return "UserInformation{" +
                "uiId=" + uiId +
                ", uiUser='" + uiUser + '\'' +
                ", uiTelNumber=" + uiTelNumber +
                ", uiSnum=" + uiSnum +
                ", uiEmail='" + uiEmail + '\'' +
                ", uiSid=" + uiSid +
                ", uiRegisterTime=" + uiRegisterTime +
                ", uiLastLoginIp='" + uiLastLoginIp + '\'' +
                ", uiLastLoginTime=" + uiLastLoginTime +
                ", uiCollege='" + uiCollege + '\'' +
                ", uiSubject='" + uiSubject + '\'' +
                ", uiTeacher='" + uiTeacher + '\'' +
                '}';
    }

    public UserInformation() {
    }

    public Integer getUiId() {
        return uiId;
    }

    public void setUiId(Integer uiId) {
        this.uiId = uiId;
    }

    public String getUiUser() {
        return uiUser;
    }

    public void setUiUser(String uiUser) {
        this.uiUser = uiUser == null ? null : uiUser.trim();
    }

    public Integer getUiTelNumber() {
        return uiTelNumber;
    }

    public void setUiTelNumber(Integer uiTelNumber) {
        this.uiTelNumber = uiTelNumber;
    }

    public Integer getUiSnum() {
        return uiSnum;
    }

    public void setUiSnum(Integer uiSnum) {
        this.uiSnum = uiSnum;
    }

    public String getUiEmail() {
        return uiEmail;
    }

    public void setUiEmail(String uiEmail) {
        this.uiEmail = uiEmail == null ? null : uiEmail.trim();
    }

    public Integer getUiSid() {
        return uiSid;
    }

    public void setUiSid(Integer uiSid) {
        this.uiSid = uiSid;
    }

    public Date getUiRegisterTime() {
        return uiRegisterTime;
    }

    public void setUiRegisterTime(Date uiRegisterTime) {
        this.uiRegisterTime = uiRegisterTime;
    }

    public String getUiLastLoginIp() {
        return uiLastLoginIp;
    }

    public void setUiLastLoginIp(String uiLastLoginIp) {
        this.uiLastLoginIp = uiLastLoginIp == null ? null : uiLastLoginIp.trim();
    }

    public Date getUiLastLoginTime() {
        return uiLastLoginTime;
    }

    public void setUiLastLoginTime(Date uiLastLoginTime) {
        this.uiLastLoginTime = uiLastLoginTime;
    }

    public String getUiCollege() {
        return uiCollege;
    }

    public void setUiCollege(String uiCollege) {
        this.uiCollege = uiCollege == null ? null : uiCollege.trim();
    }

    public String getUiSubject() {
        return uiSubject;
    }

    public void setUiSubject(String uiSubject) {
        this.uiSubject = uiSubject == null ? null : uiSubject.trim();
    }

    public String getUiTeacher() {
        return uiTeacher;
    }

    public void setUiTeacher(String uiTeacher) {
        this.uiTeacher = uiTeacher == null ? null : uiTeacher.trim();
    }
}