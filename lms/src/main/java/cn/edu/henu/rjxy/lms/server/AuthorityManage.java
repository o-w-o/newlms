/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.edu.henu.rjxy.lms.server;

import cn.edu.henu.rjxy.lms.dao.StudentDao;
import cn.edu.henu.rjxy.lms.dao.TeacherDao;
import cn.edu.henu.rjxy.lms.model.Student;
import cn.edu.henu.rjxy.lms.model.Teacher;
import java.util.LinkedList;
import java.util.List;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 *
 * @author Yu
 */
public class AuthorityManage {
        public static List<String> getCurrentAuthoritiest(String sn) {
        String str[] = {"ROLE_ACDEMIC","ROLE_DEAN","ROLE_TEACHER", "ROLE_ADMIN"};
        List list = new LinkedList();
        try {
            Teacher tea = TeacherDao.getTeacherBySn(sn);
            char[] ch = Integer.toBinaryString(Integer.valueOf(tea.getTeacherRoleValue())).toCharArray();
            int j = -1;
            for (int i = ch.length - 1; i >= 0; i--) {
                j++;
                if (String.valueOf(ch[i]).equals("1")) {
                    list.add(str[j]);
                }
            }
        } catch (Exception e) {
        }
        try {
            Student std = StudentDao.getStudentBySn(sn);
            System.out.println("找到学生" + std.getStudentName());
            list.add("ROLE_STUDENT");
        } catch (Exception e) {
        }
        return list;
    }
        
    public static String getCurrentUsername() {
      return SecurityContextHolder.getContext().getAuthentication().getName();
   }
}
