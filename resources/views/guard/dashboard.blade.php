<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Visitor Log</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .sidebar {
            width: 250px;
            background-color: #003366;
            color: white;
            height: 100vh;
            position: fixed;
            padding: 20px;
            margin-right: -10;
            padding-right: 1px;
            padding-left: 7px;3
            
        }
        .sidebar h1 {
            font-size: 24px;
        }
        .sidebar a {
            display: block;
            color: white;
            padding: 10px 0;
            text-decoration: none;
        }
        .sidebar a:hover {
            background-color: #0055a5;
        }
        .main-content {
            margin-left: 250px;
            padding: 20px;
        }
        .main-content h2 {
            font-size: 24px;
        }
        .table-container {
            width: 100%;
            overflow-x: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        .search-box {
            margin-bottom: 20px;
        }
        .search-box input {
            width: 300px;
            padding: 10px;
            font-size: 16px;
        }
        .logout-btn {
            background-color: #ff0000;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
        }
        .logout-btn:hover {
            background-color: #cc0000;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h1>Asia Pacific College</h1>
        <a href="#">Visitor</a>
        <a href="#">Events</a>
    </div>
    <div class="main-content">
        <h2>Visitor Log</h2>
        <div class="search-box">
            <input type="text" id="search" placeholder="Search...">
        </div>
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <td>Visitor ID</td>
                        <td>Visitor Name</td>
                        <td>Department</td>
                        <td>Purpose</td>
                        <td>Purpose Status</td>
                        <td>Time In</td>
                        <td>Logout Time</td>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($users as $user)
                        @foreach ($user->purposes as $purpose)
                            <tr>
                                <td>{{$user->id}}</td>
                                <td>{{$user->first_name}} {{$user->last_name}}</td>
                                <td>{{$purpose->purpose}}</td>
                                <td>{{$purpose->name}}</td>
                                <td>{{$purpose->pivot->status != 'On Going' ? 'Done (' . $purpose->pivot->finished_at . ')' : 'On Going'}}</td>
                                <td>{{$user->created_at}}</td>
                                <td>{{$user->logout_time}}</td>
                            </tr>
                        @endforeach
                    @empty
                        
                    @endforelse
                </tbody>
            </table>
        </body>
        </html>
        