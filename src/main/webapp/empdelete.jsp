<html>
<head>
    <title>Delete Employee</title>

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
        }

        .container {
            margin-top: 50px;
        }

        .card {
            display: inline-block;
            background: white;
            color: black;
            padding: 30px;
            border-radius: 10px;
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
            background: #f44336;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background: #d32f2f;
        }

        a {
            display: block;
            margin-top: 15px;
            text-decoration: none;
            color: #333;
        }
    </style>
</head>

<body>

<h1>Delete Employee</h1>

<div class="container">

    <div class="card">

        <form action="DeleteEmployeeServlet" method="post">

            <input type="number" name="id" placeholder="Enter Employee ID" required>

            <input type="submit" value="Delete Employee" class="btn"
       onclick="return confirm('Are you sure you want to delete?');">

        </form>

        <a href="index.jsp">Back to Home</a>
        <a href="DisplayEmployeeServlet">View Employees</a>

    </div>

</div>

</body>
</html>