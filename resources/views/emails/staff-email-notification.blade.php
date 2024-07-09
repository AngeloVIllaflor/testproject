<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome Email</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }
        .container {
            text-align: center;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            background-color: white;
        }
        .img {

        }
        .content {
            font-size: 18px;
            color: #333;
            margin-bottom: 20px;
        }
        .btn-clear {
            background-color: green;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }
        .btn-clear:hover {
            background-color: darkgreen;
        }
    </style>
</head>
<body>
<div class="container">
    <img src="https://vega.apc.edu.ph/logo/nu-apc-cons-logo.png" width="200px" alt="apc logo">
    <br>
    <div class='content'>
        <p>{{ $user->first_name }} {{ $user->last_name}}</p>
        <p> will be arriving at your office in {{$estTime}}.</p>
        <p>Please be prepared and have a nice day!</p>
    </div>

    <a href="{{ url('update-purpose/' . $user->id . '/' . 'department/' . $departmentId) }}" class="btn-clear">Clear</a>
</body>
</html>
