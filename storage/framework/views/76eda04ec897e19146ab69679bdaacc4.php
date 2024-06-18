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
                    <?php $__empty_1 = true; $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $user): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                        <?php $__currentLoopData = $user->purposes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $purpose): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td><?php echo e($user->id); ?></td>
                                <td><?php echo e($user->first_name); ?> <?php echo e($user->last_name); ?></td>
                                <td><?php echo e($purpose->purpose); ?></td>
                                <td><?php echo e($purpose->name); ?></td>
                                <td><?php echo e($purpose->pivot->status != 'On Going' ? 'Done (' . $purpose->pivot->finished_at . ')' : 'On Going'); ?></td>
                                <td><?php echo e($user->created_at); ?></td>
                                <td><?php echo e($user->logout_time); ?></td>
                        
                                <?php if($loop->last): ?>
                                    <td>
                                        <form action="<?php echo e(route('logout.user', $user->id)); ?>" method="GET">
                                            <?php echo csrf_field(); ?>
                                            <button type="submit" class="logout-btn">Logout</button>
                                        </form>
                                    </td>
                                <?php else: ?>
                                    <td></td>
                                <?php endif; ?>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                        
                    <?php endif; ?>
                </tbody>
            </table>
        </body>
        </html>
        <?php /**PATH /Users/danielmauricio/testproject/resources/views/guard/dashboard.blade.php ENDPATH**/ ?>