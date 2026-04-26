package com.servlet;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.dao.EmployeeDAO;
import com.model.Employee;

public class ReportCriteriaServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            String dept = req.getParameter("department");
            double salary = Double.parseDouble(req.getParameter("salary"));

            List<Employee> list =
                new EmployeeDAO().searchEmployees(dept, salary);

            req.setAttribute("reportList", list);

            RequestDispatcher rd =
                req.getRequestDispatcher("report_result.jsp");

            rd.forward(req, res);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}