<?php

namespace App\Http\Controllers\Auth;

use Illuminate\View\View;
use App\Models\Department;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use App\Http\Requests\Auth\LoginRequest;

class AuthenticatedSessionController extends Controller
{
    /**
     * Display the login view.
     */
    public function create(): View
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $request): RedirectResponse
    {
        $request->authenticate();

        $request->session()->regenerate();

        $purposes = Department::all();

        return redirect()->intended($this->intendedRoute());
    }

    private function intendedRoute() {
        $route = route('dashboard');
        switch (auth()->user()->role) {
            case 'admin':
                $route = route('admin.dashboard');
                break;

            case 'guard':
                $route = route('admin.guard');
                break;
            
            default:
                $route = route('dashboard');
                break;
        }

        return $route;
    }

    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
