<%@ page import="java.util.*, com.model.Employee" %>

<html>
<head>
    <title>Report Result</title>

    <style>
        body {
            font-family: Arial;
            margin: 0;
            background: linear-gradient(to right, #667eea, #764ba2);
            color: white;
            text-align: center;
        }

        h1 {
            margin-top: 30px;
        }

        .container {
            margin: 30px auto;
            width: 80%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            color: black;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.2);
        }

        th {
            background: #4CAF50;
            color: white;
            padding: 12px;
        }

        td {
            padding: 10px;
        }

        tr:nth-child(even) {
            background: #f2f2f2;
        }

        tr:hover {
            background: #ddd;
        }

        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>

<body>

<h1>Report Result</h1>

<div class="container">

<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Salary</th>
<th>Department</th>
</tr>

<%
List<Employee> list = (List<Employee>) request.getAttribute("reportList");

if(list != null && !list.isEmpty()){
    for(Employee e : list){
%>

<tr>
<td><%= e.getId() %></td>
<td><%= e.getName() %></td>
<td><%= e.getSalary() %></td>
<td><%= e.getDepartment() %></td>
</tr>

<%
    }
} else {
%>

<tr>
<td colspan="4">No records found</td>
</tr>

<%
}
%>

</table>

<a href="index.jsp" class="btn">Back to Home</a>

</div>

</body>
</html>