package cn.edu.henu.rjxy.lms.model;
// Generated 2015-10-23 19:30:46 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * TempTeacher generated by hbm2java
 */
public class TempTeacher  implements java.io.Serializable {


     private Integer teacherId;
     private String teacherSn;//工号
     private String teacherName;//姓名
     private String teacherIdcard;//身份证 
     private String teacherCollege;//yuan
     private String teacherTel;//手机号 
     private String teacherQq;//qq 
     private String teacherPwd;//密码 
     private boolean teacherSex;//性别 
     private String teacherPosition;//职称 
     private Date teacherEnrolling;//注册时间
     private int teacherRoleValue;

    public TempTeacher() {
    }

    public TempTeacher(String teacherSn, String teacherName, String teacherIdcard, String teacherCollege, String teacherTel, String teacherQq, String teacherPwd, boolean teacherSex, String teacherPosition, Date teacherEnrolling) {
       this.teacherSn = teacherSn;
       this.teacherName = teacherName;
       this.teacherIdcard = teacherIdcard;
       this.teacherCollege = teacherCollege;
       this.teacherTel = teacherTel;
       this.teacherQq = teacherQq;
       this.teacherPwd = teacherPwd;
       this.teacherSex = teacherSex;
       this.teacherPosition = teacherPosition;
       this.teacherEnrolling = teacherEnrolling;
    }
   
    public Integer getTeacherId() {
        return this.teacherId;
    }
    
    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }
    public String getTeacherSn() {
        return this.teacherSn;
    }
    
    public void setTeacherSn(String teacherSn) {
        this.teacherSn = teacherSn;
    }
    public String getTeacherName() {
        return this.teacherName;
    }
    
    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }
    public String getTeacherIdcard() {
        return this.teacherIdcard;
    }
    
    public void setTeacherIdcard(String teacherIdcard) {
        this.teacherIdcard = teacherIdcard;
    }
    public String getTeacherCollege() {
        return this.teacherCollege;
    }
    
    public void setTeacherCollege(String teacherCollege) {
        this.teacherCollege = teacherCollege;
    }

    public String getTeacherTel() {
        return this.teacherTel;
    }
    
    public void setTeacherTel(String teacherTel) {
        this.teacherTel = teacherTel;
    }
    public String getTeacherQq() {
        return this.teacherQq;
    }
    
    public void setTeacherQq(String teacherQq) {
        this.teacherQq = teacherQq;
    }
    public String getTeacherPwd() {
        return this.teacherPwd;
    }
    
    public void setTeacherPwd(String teacherPwd) {
        this.teacherPwd = teacherPwd;
    }
    public boolean isTeacherSex() {
        return this.teacherSex;
    }
    
    public void setTeacherSex(boolean teacherSex) {
        this.teacherSex = teacherSex;
    }
    public String getTeacherPosition() {
        return this.teacherPosition;
    }
    
    public void setTeacherPosition(String teacherPosition) {
        this.teacherPosition = teacherPosition;
    }
    public Date getTeacherEnrolling() {
        return this.teacherEnrolling;
    }
    
    public void setTeacherEnrolling(Date teacherEnrolling) {
        this.teacherEnrolling = teacherEnrolling;
    }

    public boolean getTeacherSex() {
        return this.teacherSex;
    }

    /**
     * @return the teacherRoleValue
     */
    public int getTeacherRoleValue() {
        return teacherRoleValue;
    }

    /**
     * @param teacherRoleValue the teacherRoleValue to set
     */
    public void setTeacherRoleValue(int teacherRoleValue) {
        this.teacherRoleValue = teacherRoleValue;
    }

}


