<html>
<head>
    <title>Student Grade Calculator</title>
</head>

<body>

<h2>Student Grade Calculator</h2>

<form method="post">

    Student Name:
    <input type="text" name="name" required>
    <br><br>

    Marks:
    <input type="number" name="marks" min="0" max="100" required>
    <br><br>

    <input type="submit" value="Calculate Grade">

</form>

<%
    String name = request.getParameter("name");
    String marksText = request.getParameter("marks");

    if (name != null && marksText != null) {

        int marks = Integer.parseInt(marksText);
        String grade;

        if (marks >= 90) {
            grade = "A";
        } else if (marks >= 75) {
            grade = "B";
        } else if (marks >= 60) {
            grade = "C";
        } else if (marks >= 40) {
            grade = "D";
        } else {
            grade = "Fail";
        }
%>

<h3>Result</h3>

<p>Student Name: <%= name %></p>
<p>Marks: <%= marks %></p>
<p>Grade: <%= grade %></p>

<%
    }
%>

</body>
</html>