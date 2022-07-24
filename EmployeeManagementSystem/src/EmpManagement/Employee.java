/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package EmpManagement;

import java.util.Date;

/**
 *
 * @author Subriti
 */
public class Employee {

    int emp_id;
    String emp_name;
    String emp_last_name;
    String emp_address;
    String emp_email;
    int emp_salary;
    int dept_id;
    int post_id;
    Date update_date;
    int dept_code;
    String dept_name;
    String post_name;

    public int getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(int emp_id) {
        this.emp_id = emp_id;
    }

    public String getEmp_name() {
        return emp_name;
    }

    public void setEmp_name(String emp_name) {
        this.emp_name = emp_name;
    }

    public String getEmp_last_name() {
        return emp_last_name;
    }

    public void setEmp_last_name(String emp_last_name) {
        this.emp_last_name = emp_last_name;
    }

    public String getEmp_address() {
        return emp_address;
    }

    public void setEmp_address(String emp_address) {
        this.emp_address = emp_address;
    }

    public String getEmp_email() {
        return emp_email;
    }

    public void setEmp_email(String emp_email) {
        this.emp_email = emp_email;
    }

    public int getEmp_salary() {
        return emp_salary;
    }

    public void setEmp_salary(int emp_salary) {
        this.emp_salary = emp_salary;
    }

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public int getPost_id() {
        return post_id;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public Date getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(Date update_date) {
        this.update_date = update_date;
    }

    public int getDept_code() {
        return dept_code;
    }

    public void setDept_code(int dept_code) {
        this.dept_code = dept_code;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public String getPost_name() {
        return post_name;
    }

    public void setPost_name(String post_name) {
        this.post_name = post_name;
    }

    public Employee(int emp_id, String emp_name, String emp_last_name, String emp_address, String emp_email, int emp_salary, int dept_id, int post_id, Date update_date, int dept_code, String dept_name, String post_name) {
        this.emp_id = emp_id;
        this.emp_name = emp_name;
        this.emp_last_name = emp_last_name;
        this.emp_address = emp_address;
        this.emp_email = emp_email;
        this.emp_salary = emp_salary;
        this.dept_id = dept_id;
        this.post_id = post_id;
        this.update_date = update_date;
        this.dept_code = dept_code;
        this.dept_name = dept_name;
        this.post_name = post_name;
    }
}
