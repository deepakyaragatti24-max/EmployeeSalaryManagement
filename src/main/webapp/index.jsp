<html>
<head>
    <title>Employee Management System</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: linear-gradient(to right, #667eea, #764ba2);
            color: white;
            text-align: center;
        }

        h1 {
            margin-top: 40px;
            font-size: 36px;
        }

        .container {
            margin-top: 50px;
        }

        .card {
            display: inline-block;
            background: white;
            color: black;
            width: 200px;
            margin: 15px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.2);
            transition: 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            font-size: 18px;
        }
    </style>
</head>

<body>

<h1>Employee Salary Management</h1>

<div class="container">

    <div class="card">
        <a href="<%=request.getContextPath()%>/empadd.jsp">Add Employee</a>
    </div>

    <div class="card">
        <a href="<%=request.getContextPath()%>/DisplayEmployeeServlet">View Employees</a>
    </div>

    <div class="card">
        <a href="<%=request.getContextPath()%>/empupdate.jsp">Update Employee</a>
    </div>

    <div class="card">
        <a href="<%=request.getContextPath()%>/empdelete.jsp">Delete Employee</a>
    </div>

    <div class="card">
        <a href="<%=request.getContextPath()%>/reports.jsp">Reports</a>
    </div>

</div>

</body>
</html>