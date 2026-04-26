<html>
<head>
    <title>Add Employee</title>

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
            margin-top: 15px;
            text-decoration: none;
            color: #333;
        }
    </style>

    <!-- ✅ CLIENT-SIDE VALIDATION -->
    <script>
        function validateForm() {
            let name = document.forms["empForm"]["name"].value;
            let salary = document.forms["empForm"]["salary"].value;
            let dept = document.forms["empForm"]["department"].value;

            // Name validation
            if (!/^[A-Za-z ]+$/.test(name)) {
                alert("Name must contain only letters");
                return false;
            }

            // Salary validation
            if (salary === "" || isNaN(salary) || salary <= 0) {
                alert("Enter valid salary");
                return false;
            }

            // Department validation
            if (dept === "") {
                alert("Department cannot be empty");
                return false;
            }

            return true;
        }
    </script>

</head>

<body>

<h1>Add Employee</h1>

<div class="container">

    <div class="card">

        <!-- ✅ FORM WITH VALIDATION -->
        <form name="empForm" action="AddEmployeeServlet" method="post" onsubmit="return validateForm()">

            <input type="text" name="name" placeholder="Enter Name" required>

            <input type="number" name="salary" placeholder="Enter Salary" required>

            <input type="text" name="department" placeholder="Enter Department" required>

            <input type="submit" value="Add Employee" class="btn">

        </form>

        <a href="index.jsp">Back to Home</a>

    </div>

</div>

</body>
</html>