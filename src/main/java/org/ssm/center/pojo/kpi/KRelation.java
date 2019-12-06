package org.ssm.center.pojo.kpi;

public class KRelation {
    private Integer id;

    private String kExam;

    private String kAssess;

    private String kRelaName;

    private String isUse;

    @Override
    public String toString() {
        return "KRelation{" +
                "id=" + id +
                ", kExam='" + kExam + '\'' +
                ", kAssess='" + kAssess + '\'' +
                ", kRelaName='" + kRelaName + '\'' +
                ", isUse='" + isUse + '\'' +
                '}';
    }

    public String getIsUse() {
        return isUse;
    }

    public void setIsUse(String isUse) {
        this.isUse = isUse;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getkExam() {
        return kExam;
    }

    public void setkExam(String kExam) {
        this.kExam = kExam == null ? null : kExam.trim();
    }

    public String getkAssess() {
        return kAssess;
    }

    public void setkAssess(String kAssess) {
        this.kAssess = kAssess == null ? null : kAssess.trim();
    }

    public String getkRelaName() {
        return kRelaName;
    }

    public void setkRelaName(String kRetaName) {
        this.kRelaName = kRetaName == null ? null : kRetaName.trim();
    }
}