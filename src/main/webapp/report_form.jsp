<html>
<head>
    <title>Report Criteria</title>

    <style>
        body {
            font-family: Arial;
            margin: 0;
            background: linear-gradient(to right, #667eea, #764ba2);
            color: white;
            text-align: center;
        }

        h1 {
            margin-top: 40px;
        }

        .card {
            display: inline-block;
            background: white;
            color: black;
            padding: 30px;
            border-radius: 10px;
            margin-top: 50px;
            width: 300px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.2);
        }

        input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .btn {
            background: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background: #45a049;
        }

        a {
            display: block;
            margin-top: 10px;
            color: #333;
        }
    </style>
</head>

<body>

<h1>Generate Report</h1>

<div class="card">

<form action="ReportCriteriaServlet" method="post">

    <input type="text" name="department" placeholder="Enter Department" required>

    <input type="number" name="salary" placeholder="Minimum Salary" required>

    <input type="submit" value="Generate Report" class="btn">

</form>

<a href="index.jsp">Back to Home</a>

</div>

</body>
</html>