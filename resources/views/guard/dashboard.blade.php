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
            @forelse ($users as $user)
                @foreach ($user->purposes as $purpose)
                    <tr>
                        <td>{{$user->id}}</td>
                        <td>{{$user->first_name}} {{$user->last_name}}</td>
                        <td>{{$purpose->purpose}}</td>
                        <td>{{$purpose->name}}</td>
                        <td>{{$purpose->pivot->status != 'On Going' ? 'Done (' . $purpose->pivot->finished_at . ')' : 'On Going'}}</td>
                        <td>{{$user->created_at}}</td>
                        <td>{{$user->time_out}}</td>
                        @if ($loop->last)
                            <td>
                                <button>Logout</button>
                            </td>
                        @else
                            <td></td>
                        @endif
                    </tr>
                @endforeach
            @empty
                
            @endforelse
        </tbody>
    </table>
</body>
</html>