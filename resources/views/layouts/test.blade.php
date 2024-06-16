<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome Email</title>

</head>
<body>
    <div class="container">
        <div class="logo">
            <img src="{{ asset('logo2.png') }}" alt="College Logo" class="logo mb-4">
        </div>
        <div class="content">
            <p> will be arriving at your office.</p>
            <p>Please be prepared and have a nice day!</p>
        </div>
        <button class="btn-clear">Clear</button>
    </div>
</body>
</html>
