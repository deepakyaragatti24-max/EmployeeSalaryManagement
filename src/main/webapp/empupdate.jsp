<html>
<head>
    <title>Update Employee</title>

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
            width: 320px;
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
            background: #ff9800;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background: #e68900;
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

<h1>Update Employee</h1>

<div class="container">

    <div class="card">

        <form action="UpdateEmployeeServlet" method="post">

            <input type="number" name="id" placeholder="Enter Employee ID" required>

            <input type="text" name="name" placeholder="Enter New Name" required>

            <input type="number" name="salary" placeholder="Enter New Salary" required>

            <input type="text" name="department" placeholder="Enter New Department" required>

            <input type="submit" value="Update Employee" class="btn">

        </form>

        <a href="index.jsp">Back to Home</a>

    </div>

</div>

</body>
</html>