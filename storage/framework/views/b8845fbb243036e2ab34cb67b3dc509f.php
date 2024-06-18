<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Clear Visitor</title>
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
    </style>
</head>
<body>
<form id="update-form" action="<?php echo e(url('/api/update-data')); ?>" method="POST">
    <?php echo csrf_field(); ?>
    <input type="hidden" name="department_id" value="<?php echo e($departmentId); ?>">
    <input type="hidden" name="purpose_id" value="<?php echo e($purposeId); ?>">
    <input type="hidden" name="fullname" value="<?php echo e($fullname); ?>">
</form>
    <script type="text/javascript">
        document.getElementById('update-form').submit();
    </script>
</body>
</html>
<?php /**PATH D:\Documents\Anloo\testproject\resources\views\clear.blade.php ENDPATH**/ ?>