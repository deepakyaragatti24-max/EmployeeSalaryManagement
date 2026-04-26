package com.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.dao.EmployeeDAO;
import com.model.Employee;

public class UpdateEmployeeServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        try {
            // ✅ Get parameters
            String idStr = req.getParameter("id");
            String name = req.getParameter("name");
            String salStr = req.getParameter("salary");
            String dept = req.getParameter("department");

            // ✅ ID validation
            int id = 0;
            try {
                id = Integer.parseInt(idStr);
                if (id <= 0) {
                    out.println("Invalid ID");
                    return;
                }
            } catch (Exception e) {
                out.println("Invalid ID");
                return;
            }

            // ✅ Name validation
            if (name == null || !name.matches("[A-Za-z ]+")) {
                out.println("Invalid Name");
                return;
            }

            // ✅ Salary validation
            double salary = 0;
            try {
                salary = Double.parseDouble(salStr);
                if (salary <= 0) {
                    out.println("Salary must be positive");
                    return;
                }
            } catch (Exception e) {
                out.println("Invalid Salary");
                return;
            }

            // ✅ Department validation
            if (dept == null || dept.trim().isEmpty()) {
                out.println("Department required");
                return;
            }

            // ✅ Create object
            Employee emp = new Employee();
            emp.setId(id);
            emp.setName(name);
            emp.setSalary(salary);
            emp.setDepartment(dept);

            // ✅ Update DB
            new EmployeeDAO().updateEmployee(emp);

            // ✅ Redirect
            res.sendRedirect("DisplayEmployeeServlet");

        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        }
    }
}