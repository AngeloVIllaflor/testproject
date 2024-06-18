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
use App\Models\Visitor;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\RedirectResponse;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\DB;

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
        DB::beginTransaction();
        $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'phone_number' => [
                'required',
                'string',
                'regex:/^09\d{9}$/', // Custom regex rule to ensure it starts with "09" and is 11 digits long
            ],
            'purposes' => 'required|max:255',
            'email' => 'string|lowercase|email'
        ]);

        $visitor = Visitor::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'phone_number' => $request->phone_number,
            'email' => $request->email,
            'visit_status' => 'No',
            'password' => bcrypt(Str::random(8))
        ]);

        $purposes = $request->input('purposes', []);
        $visitor->purposes()->syncWithPivotValues($request->input('purposes', []), [
            'status' => 'On Going'
        ]);

        logger()->info('emails', $visitor->purposes->pluck('email')->toArray());
        event(new Registered($visitor));

        logger()->info('purposes', [$purposes]);

        // Send welcome email
        foreach ($visitor->purposes as $purpose) {
            Mail::to($purpose->email)->send(new StaffEmailNotification($visitor, $purpose->name, $purpose->id));
            sleep(2);
        }

        DB::commit();

        return redirect(route('dashboard', absolute: false));
    }
}
