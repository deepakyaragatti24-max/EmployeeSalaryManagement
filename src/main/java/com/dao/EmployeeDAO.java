package com.dao;

import java.sql.*;
import java.util.*;
import com.model.Employee;

public class EmployeeDAO {

    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/project", "root", "password");
    }

    // ✅ ADD EMPLOYEE
    public void addEmployee(Employee emp) throws Exception {
        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO employee(name, salary, department) VALUES(?,?,?)");

        ps.setString(1, emp.getName());
        ps.setDouble(2, emp.getSalary());
        ps.setString(3, emp.getDepartment());

        ps.executeUpdate();
        con.close();
    }

    // ✅ DISPLAY ALL
    public List<Employee> getAllEmployees() throws Exception {
        List<Employee> list = new ArrayList<>();
        Connection con = getConnection();

        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM employee");

        while (rs.next()) {
            Employee e = new Employee();
            e.setId(rs.getInt("id"));
            e.setName(rs.getString("name"));
            e.setSalary(rs.getDouble("salary"));
            e.setDepartment(rs.getString("department"));
            list.add(e);
        }

        con.close();
        return list;
    }

    // ✅ DELETE
    public void deleteEmployee(int id) throws Exception {
        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement(
            "DELETE FROM employee WHERE id=?");

        ps.setInt(1, id);
        ps.executeUpdate();

        con.close();
    }

    // ✅ UPDATE
    public void updateEmployee(Employee emp) throws Exception {
        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement(
            "UPDATE employee SET name=?, salary=?, department=? WHERE id=?");

        ps.setString(1, emp.getName());
        ps.setDouble(2, emp.getSalary());
        ps.setString(3, emp.getDepartment());
        ps.setInt(4, emp.getId());

        ps.executeUpdate();
        con.close();
    }

    // ✅ SEARCH (ADVANCED FEATURE)
    public List<Employee> searchEmployees(String dept, double minSalary) throws Exception {

        List<Employee> list = new ArrayList<>();
        Connection con = getConnection();

        String sql = "SELECT * FROM employee WHERE department=? AND salary>=?";
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, dept);
        ps.setDouble(2, minSalary);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            Employee e = new Employee();
            e.setId(rs.getInt("id"));
            e.setName(rs.getString("name"));
            e.setSalary(rs.getDouble("salary"));
            e.setDepartment(rs.getString("department"));
            list.add(e);
        }

        con.close();
        return list;
    }
}