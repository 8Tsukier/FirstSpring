<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Info</title>
    <style>
        table {
            border-collapse: collapse;
            border: 2px;
        }
        th {
            text-align: left; /* Выравнивание по левому краю */
            background: #ccc; /* Цвет фона ячеек */
            padding: 5px; /* Поля вокруг содержимого ячеек */
            border: 1px solid black; /* Граница вокруг ячеек */
        }
        td {
            padding: 5px; /* Поля вокруг содержимого ячеек */
            border: 1px solid black; /* Граница вокруг ячеек */
        }
    </style>

</head>
<body>
<h1>Some user info page</h1>

    <table>
        <caption>User information</caption>
        <tr>
            <td>Id</td>
            <td>${user.id}</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>${user.name}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>${user.email}</td>
        </tr>
        <tr>
            <td>Age</td>
            <td>${user.age}</td>
        </tr>
    </table>

<br>
<a href="/users">Go back</a>

</body>
</html>