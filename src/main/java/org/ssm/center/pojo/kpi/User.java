package org.ssm.center.pojo.kpi;

public class User {
    private Integer uId;

    private String uSid;

    private String uName;

    private String uPassword;

    private Integer uRange;

    private Integer uLevel;

    private  Integer uStatus;

    private UserG userG;

    @Override
    public String toString() {
        return "User{" +
                "uId=" + uId +
                ", uSid='" + uSid + '\'' +
                ", uName='" + uName + '\'' +
                ", uPassword='" + uPassword + '\'' +
                ", uRange=" + uRange +
                ", uLevel=" + uLevel +
                ", uStatus=" + uStatus +
                ", userG=" + userG +
                '}';
    }

    public UserG getUserG() {
        return userG;
    }

    public void setUserG(UserG userG) {
        this.userG = userG;
    }

    public Integer getuStatus() {
        return uStatus;
    }

    public void setuStatus(Integer uStatus) {
        this.uStatus = uStatus;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuSid() {
        return uSid;
    }

    public void setuSid(String uSid) {
        this.uSid = uSid;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName == null ? null : uName.trim();
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword == null ? null : uPassword.trim();
    }


    public Integer getuRange() {
        return uRange;
    }

    public void setuRange(Integer uRange) {
        this.uRange = uRange;
    }

    public Integer getuLevel() {
        return uLevel;
    }

    public void setuLevel(Integer uLevel) {
        this.uLevel = uLevel;
    }
}