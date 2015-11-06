package cn.edu.henu.rjxy.lms.model;
// Generated 2015-10-23 19:30:46 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Teacher generated by hbm2java
 */
public class Teacher extends TempTeacher implements java.io.Serializable {
     
     private int teacherRoleValue;

    public Teacher() {
    }

    public Teacher(String teacherSn, String teacherName, String teacherIdcard, int teacherCollegeId, String teacherTel, String teacherQq, String teacherPwd, boolean teacherSex, int teacherPositionId, Date teacherEnrolling, int teacherRoleValue) {
        super(teacherSn, teacherName, teacherIdcard, teacherCollegeId, teacherTel, teacherQq, teacherPwd, teacherSex, teacherPositionId, teacherEnrolling);
       this.teacherRoleValue = teacherRoleValue;
    }
   
    public int getTeacherRoleValue() {
        return this.teacherRoleValue;
    }
    
    public void setTeacherRoleValue(int teacherRoleValue) {
        this.teacherRoleValue = teacherRoleValue;
    }




}

