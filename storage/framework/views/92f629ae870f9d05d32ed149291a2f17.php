<?php if (isset($component)) { $__componentOriginal9ac128a9029c0e4701924bd2d73d7f54 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal9ac128a9029c0e4701924bd2d73d7f54 = $attributes; } ?>
<?php $component = App\View\Components\AppLayout::resolve([] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('app-layout'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\App\View\Components\AppLayout::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
    <style>
        html, body {
            height: 100%;
            margin: 0;
        }

        .min-vh-100 {
            min-height: 100vh;
        }

        .logo {
            max-width: 15%; /* Adjust this to scale the logo size */
            height: auto; /* Maintains the aspect ratio */
            max-width: 35vw; /* Adjusted to ensure responsiveness */
        }

        .gradient-background {
            background: linear-gradient(180deg, #0047AB, #87CEEB);
        }
    </style>

    <div class="d-flex justify-content-center align-items-center min-vh-100 gradient-background">
        <div class="text-center text-white">
            <img src="<?php echo e(asset('logo2.png')); ?>" alt="College Logo" class="logo mb-4">
            <h1 class="display-4">Thank you!</h1>
            <p class="lead">You may now proceed to your respective departments.</p>
        </div>
    </div>

    

    <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
        <?php echo csrf_field(); ?>
    </form>

<script>
    // Auto logout after 5 seconds
    setTimeout(function() {
        document.getElementById('logout-form').submit();
    }, 4000); // 5000 milliseconds = 5 seconds
</script>

 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal9ac128a9029c0e4701924bd2d73d7f54)): ?>
<?php $attributes = $__attributesOriginal9ac128a9029c0e4701924bd2d73d7f54; ?>
<?php unset($__attributesOriginal9ac128a9029c0e4701924bd2d73d7f54); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal9ac128a9029c0e4701924bd2d73d7f54)): ?>
<?php $component = $__componentOriginal9ac128a9029c0e4701924bd2d73d7f54; ?>
<?php unset($__componentOriginal9ac128a9029c0e4701924bd2d73d7f54); ?>
<?php endif; ?>

<?php /**PATH D:\Documents\Anloo\testproject\resources\views\dashboard.blade.php ENDPATH**/ ?>