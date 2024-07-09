<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use Carbon\Carbon;

class LogOutController extends Controller
{
    public function showLogoutForm()
    {
        return view('logout');
    }   

    public function submitLogoutForm(Request $request)
    {
        // Handle form submission
        // Validate and process the data
        // Redirect or return a response

        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'purpose' => 'required|string|max:255',
            'department' => 'required|string|max:255',
            'floor_room' => 'required|string|max:255',
            'checkin_date' => 'required|date',
            'checkin_time' => 'required|date_format:H:i',
            'checkout_time' => 'required|date_format:H:i',
        ]);

        // Example: Save to database
        // CheckOut::create($validatedData);

        return redirect('/logout-form')->with('status', 'Form submitted successfully!');
    }

    public function getUser($id)
    {
        $user = User::with('purposes')->where('id', $id)->whereNull('logout_time')->first();

        $purposes = [];

        foreach($user->purposes as $purpose) {
            $purposes[] = [
                'purpose' => $purpose->name,
                'location' => $purpose->location,
                'department' => $purpose->purpose,
                'status' => $purpose->pivot->status,
                'finished_at' => $purpose->pivot->finished_at ? Carbon::parse($purpose->pivot->finished_at)->format('H:i:s') : null
            ];
        }
        
        if ($user) {
            return response()->json(compact('user', 'purposes'));
        } else {
            return response()->json(['error' => 'User not found'], 404);
        }
    }
}

