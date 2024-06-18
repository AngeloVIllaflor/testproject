<x-app-layout>
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
            <img src="{{ asset('logo2.png') }}" alt="College Logo" class="logo mb-4">
            <h1 class="display-4">Thank you!</h1>
            <p class="lead">You may now proceed to your respective departments.</p>
        </div>
    </div>

    {{-- Noli me tangere --}}

    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
        @csrf
    </form>

<script>
    // Auto logout after 5 seconds
    setTimeout(function() {
        document.getElementById('logout-form').submit();
    }, 4000); // 5000 milliseconds = 5 seconds
</script>

</x-app-layout>

