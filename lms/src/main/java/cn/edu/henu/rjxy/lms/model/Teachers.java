package cn.edu.henu.rjxy.lms.model;
// Generated 2015-10-23 19:30:46 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.Set;

/**
 * Teacher generated by hbm2java
 */
public class Teachers implements java.io.Serializable {
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

     

    public Teachers() {
    }

    public Teachers(String teacherSn, String teacherName, String teacherIdcard, String teacherCollege, String teacherTel, String teacherQq, String teacherPwd, boolean teacherSex, String teacherPosition, Date teacherEnrolling, int teacherRoleValue) {
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
       this.teacherRoleValue = teacherRoleValue;
    }
    
    
    
    
    
    public void copy(Teacher tempTeacher){
            this.setTeacherId(tempTeacher.getTeacherId());
            this.setTeacherSn(tempTeacher.getTeacherSn());
            this.setTeacherName(tempTeacher.getTeacherName());
            this.setTeacherIdcard(tempTeacher.getTeacherIdcard());
            this.setTeacherCollege(tempTeacher.getTeacherCollege());
            this.setTeacherTel(tempTeacher.getTeacherTel());
            this.setTeacherQq(tempTeacher.getTeacherQq());
            this.setTeacherPwd(tempTeacher.getTeacherPwd());
            this.setTeacherSex(tempTeacher.getTeacherSex());
            this.setTeacherPosition(tempTeacher.getTeacherPosition());
            this.setTeacherEnrolling(tempTeacher.getTeacherEnrolling());
            this.setTeacherRoleValue(0);
    }
   
    public int getTeacherRoleValue() {
        return this.teacherRoleValue;
    }
    
    public void setTeacherRoleValue(int teacherRoleValue) {
        this.teacherRoleValue = teacherRoleValue;
    }

    /**
     * @return the teacherId
     */
    public Integer getTeacherId() {
        return teacherId;
    }

    /**
     * @param teacherId the teacherId to set
     */
    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    /**
     * @return the teacherSn
     */
    public String getTeacherSn() {
        return teacherSn;
    }

    /**
     * @param teacherSn the teacherSn to set
     */
    public void setTeacherSn(String teacherSn) {
        this.teacherSn = teacherSn;
    }

    /**
     * @return the teacherName
     */
    public String getTeacherName() {
        return teacherName;
    }

    /**
     * @param teacherName the teacherName to set
     */
    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    /**
     * @return the teacherIdcard
     */
    public String getTeacherIdcard() {
        return teacherIdcard;
    }

    /**
     * @param teacherIdcard the teacherIdcard to set
     */
    public void setTeacherIdcard(String teacherIdcard) {
        this.teacherIdcard = teacherIdcard;
    }

    /**
     * @return the teacherCollegeId
     */
    public String getTeacherCollege() {
        return teacherCollege;
    }


    public void setTeacherCollege(String teacherCollege) {
        this.teacherCollege = teacherCollege;
    }

    /**
     * @return the teacherTel
     */
    public String getTeacherTel() {
        return teacherTel;
    }

    /**
     * @param teacherTel the teacherTel to set
     */
    public void setTeacherTel(String teacherTel) {
        this.teacherTel = teacherTel;
    }

    /**
     * @return the teacherQq
     */
    public String getTeacherQq() {
        return teacherQq;
    }

    /**
     * @param teacherQq the teacherQq to set
     */
    public void setTeacherQq(String teacherQq) {
        this.teacherQq = teacherQq;
    }

    /**
     * @return the teacherPwd
     */
    public String getTeacherPwd() {
        return teacherPwd;
    }

    /**
     * @param teacherPwd the teacherPwd to set
     */
    public void setTeacherPwd(String teacherPwd) {
        this.teacherPwd = teacherPwd;
    }

    /**
     * @return the teacherSex
     */
    public boolean getTeacherSex() {
        return teacherSex;
    }

    /**
     * @param teacherSex the teacherSex to set
     */
    public void setTeacherSex(boolean teacherSex) {
        this.teacherSex = teacherSex;
    }

    /**
     * @return the teacherPositionId
     */
    public String getTeacherPosition() {
        return teacherPosition;
    }


    public void setTeacherPosition(String teacherPosition) {
        this.teacherPosition = teacherPosition;
    }

    /**
     * @return the teacherEnrolling
     */
    public Date getTeacherEnrolling() {
        return teacherEnrolling;
    }

    /**
     * @param teacherEnrolling the teacherEnrolling to set
     */
    public void setTeacherEnrolling(Date teacherEnrolling) {
        this.teacherEnrolling = teacherEnrolling;
    }





}


