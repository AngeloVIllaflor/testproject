<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check-Out Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-size: 1.2rem;
        }
        h2, h3 {
            color: #35438c;
        }
        .btn-success {
            background-color: #fcb900;
            border-color: #fcb900;
        }
        .btn-success:hover {
            background-color: #e5a500;
            border-color: #e5a500;
        }
        .table {
            table-layout: fixed;
            width: 100%;
        }
        .table thead th {
            background-color: #35438c;
            color: #ffffff;
            word-wrap: break-word;
        }
        .table tbody td {
            background-color: #e9ecef;
            word-wrap: break-word;
        }
        .table tbody td input {
            background-color: #e9ecef;
            border: none;
            pointer-events: none;
            width: 100%;
            height: 100%;
            word-wrap: break-word;
            white-space: normal;
            overflow: hidden;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2>Please find your name and then Logout</h2>
        <div class="form-group">
            <label for="search">Your Visitor Number</label>
            <input type="text" class="form-control" id="search" name="search" placeholder="Visitor Number">
        </div>
        <div class="form-group mt-3">
            <h3>Was this you?</h3>
            <input type="hidden" id="user_id" name="user_id">
            <input type="text" class="form-control mb-2" id="name" name="name" placeholder="Name" readonly>
            
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Purpose of the Visit</th>
                        <th>Department</th>
                        <th>Floor</th>
                        <th>Purpose Status</th>
                        <th>Time (Cleared visit)</th>
                    </tr>
                </thead>
                <tbody id="purpose-table">
                    <!-- Rows will be appended here -->
                </tbody>
            </table>
        </div>

        <form id="logoutform" action="aaa" method="GET">
            @csrf
            <button type="submit" class="logout-btn">Logout</button>
        </form>

        @if(session('status'))
            <div class="alert alert-success mt-3">
                {{ session('status') }}
            </div>
        @endif

        @if ($errors->any())
            <div class="alert alert-danger mt-3">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
    </div>

    <script>
        $(document).ready(function(){
            $('#search').on('input', function() {
                let userId = $(this).val();
                if (userId) {
                    $.ajax({
                        url: '/get-user/' + userId,
                        type: 'GET',
                        success: function(response) {  
                            $('#user_id').val(response.user.id);
                            $('#name').val(response.user.first_name + ' ' + response.user.last_name);

                            $('#purpose-table').empty(); // Clear previous results

                            response.purposes.forEach(function(purpose) {
                                $('#purpose-table').append(
                                    `<tr>
                                        <td>${purpose.purpose}"</td>
                                        <td>${purpose.department}</td>
                                        <td>${purpose.location}</td>
                                        <td>${purpose.status}</td>
                                        <td>${purpose.finished_at}</td>
                                    </tr>`
                                );
                            });

                            $('#logoutform').attr('action', '/logout-user/' + response.user.id);
                        },
                        error: function() {
                            // Handle errors
                        }
                    }); 
                }   
            });
        });
    </script>
</body>
</html>
