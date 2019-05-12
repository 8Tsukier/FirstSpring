<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List</title>
    <style>
        table {
            width: 100%; /* Ширина таблицы */
            border: 4px double black; /* Рамка вокруг таблицы */
            border-collapse: collapse; /* Отображать только одинарные линии */
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
<h1>My users list is here: </h1>

<table>
    <caption>Users from DB</caption>
    <tr>
        <th>id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Age</th>
    </tr>
    <#list users as user >
        <tr>
            <td><a href="/user/${user.id}">${user.id}</a></td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.age}</td>
            <td><a href="/delete/${user.id}">Remove</a></td>
            <td><a href="/update/${user.id}">Update</a></td>
        </tr>
    </#list>
</table>

<a href="/addUser">Create new user</a>

</body>
</html>