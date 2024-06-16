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
            'email' => 'string|lowercase|email'
        ]);

        $purposeId = str::uuid();
        $user = User::create([
            // 'name' => $request->name,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'phone_number' => $request->phone_number,
            'purpose_id' => $purposeId,
            'email' => $request->email,
            'visit_status' => 'No',
            'password' => bcrypt(Str::random(8))
            // 'password' => Hash::make($request->password),
        ]);

        $departmentEmails = [];
        $departmentName = [];
        $departmentId = [];
        $purposes = $request->input('purposes', []);
        foreach ($purposes as $purpose) {
            $department = Department::where('id', $purpose)->first();
            Purpose::create([
                'id' => $purposeId,
                'description' => $department->name,
                'department_id' => $department->id,
                'department_status' => 'No']);

                $departmentEmails[] = $department->email;
                $departmentName[] = $department->purpose;
                $departmentId[] = $department->id;
        }

        logger()->info('emails', [$departmentEmails]);
        event(new Registered($user));

        logger()->info('purposes', [$purposes]);
        Auth::login($user);

        // Send welcome email
        foreach ($departmentEmails as $index => $email) {
            Mail::to($email)->send(new StaffEmailNotification($user, $departmentName[$index], $departmentId[$index], $purposeId));
        }

        return redirect(route('dashboard', absolute: false));
    }
}
