<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use App\Models\Purpose;
use Illuminate\View\View;
use App\Models\Department;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Mail\StaffEmailNotification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\RedirectResponse;
use Illuminate\Auth\Events\Registered;

class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     */
    public function create(): View
    {
        // return view('auth.register');

        $purposes = Department::all();

        // Pass purposes to the view
        return view('auth.register', compact('purposes'));
    }

    /**
     * Handle an incoming registration request.
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request): RedirectResponse
    {

        $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'phone_number' => [
                'required',
                'string',
                'regex:/^09\d{9}$/', // Custom regex rule to ensure it starts with "09" and is 11 digits long
            ],
            'purposes' => 'required|max:255',
            'email' => 'nullable|string|lowercase|email'
        ]);

        $user = User::create([  
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'phone_number' => $request->phone_number,
            'email' => $request->email,
            'password' => bcrypt(Str::random(8))
        ]);

        $purposes = $request->input('purposes', []);
        $user->purposes()->syncWithPivotValues($request->input('purposes', []), [
            'status' => 'On Going'
        ]);

        logger()->info('emails', $user->purposes->pluck('email')->toArray());
        event(new Registered($user));

        logger()->info('purposes', [$purposes]);
        Auth::login($user);

        // Send welcome email
        foreach ($user->purposes as $purpose) {
            Mail::to($purpose->email)->send(new StaffEmailNotification($user, $purpose->name, $purpose->id, $purpose->est_time));
        }

        return redirect(route('dashboard', absolute: false));
    }
}
