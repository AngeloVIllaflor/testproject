<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <td>Visitor ID</td>
                <td>Visitor Name</td>
                <td>Department</td>
                <td>Purpose</td>
                <td>Purpose Status</td>
                <td>Time In</td>
                <td>Time Out</td>
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
                        <td><?php echo e($user->time_out); ?></td>
                        <?php if($loop->last): ?>
                            <td>
                                <button>Logout</button>
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
</html><?php /**PATH D:\wamp\www\testproject\resources\views/guard/dashboard.blade.php ENDPATH**/ ?>