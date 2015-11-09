package cn.edu.henu.rjxy.lms.model;
// Generated 2015-10-23 19:30:46 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * TempTeacher generated by hbm2java
 */
public class TempTeacherWithoutPwd  implements java.io.Serializable {


     private Integer teacherId;
     private String teacherSn;//工号
     private String teacherName;//姓名
     private String teacherIdcard;//身份证 
     private int teacherCollegeId;//yuan

     private String teacherTel;//手机号 
     private String teacherQq;//qq 

     private boolean teacherSex;//性别 
     private int teacherPositionId;//职称 
     private Date teacherEnrolling;//注册时间

    public TempTeacherWithoutPwd() {
    }

    public TempTeacherWithoutPwd(String teacherSn, String teacherName, String teacherIdcard, int teacherCollegeId, String teacherTel, String teacherQq, boolean teacherSex, int teacherPositionId, Date teacherEnrolling) {
       this.teacherSn = teacherSn;
       this.teacherName = teacherName;
       this.teacherIdcard = teacherIdcard;
       this.teacherCollegeId = teacherCollegeId;
       this.teacherTel = teacherTel;
       this.teacherQq = teacherQq;
       this.teacherSex = teacherSex;
       this.teacherPositionId = teacherPositionId;
       this.teacherEnrolling = teacherEnrolling;
    }
    public void copy(TempTeacher tempTeacher){
       this.teacherSn = tempTeacher.getTeacherSn();
       this.teacherName = tempTeacher.getTeacherName();
       this.teacherIdcard = tempTeacher.getTeacherIdcard();
       this.teacherCollegeId = tempTeacher.getTeacherCollegeId();
       this.teacherTel = tempTeacher.getTeacherTel();
       this.teacherQq = tempTeacher.getTeacherQq();
       this.teacherSex = tempTeacher.getTeacherSex();
       this.teacherPositionId = tempTeacher.getTeacherPositionId();
       this.teacherEnrolling = tempTeacher.getTeacherEnrolling();
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
    public int getTeacherCollegeId() {
        return this.teacherCollegeId;
    }
    
    public void setTeacherCollegeId(int teacherCollegeId) {
        this.teacherCollegeId = teacherCollegeId;
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

    public boolean isTeacherSex() {
        return this.teacherSex;
    }
    
    public void setTeacherSex(boolean teacherSex) {
        this.teacherSex = teacherSex;
    }
    public int getTeacherPositionId() {
        return this.teacherPositionId;
    }
    
    public void setTeacherPositionId(int teacherPositionId) {
        this.teacherPositionId = teacherPositionId;
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
    


}


