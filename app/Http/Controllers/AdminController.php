<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;


class AdminController extends Controller
{
    public function adminDashboard(){
        return view('admin.admin_dashboard');
    }//adminDashboard method end

    public function AdminLogin(){
        return view('admin.admin_login');
    }
    
    public function VendorLogin(){
        return view('vendor.vendor_login');
    }
    
    public function adminProfile(){
        $id = Auth::user()->id;
        $adminData = User::find($id);

        return view('admin.admin_profile', compact('adminData'));
    }

    public function adminDestroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/admin/login');
    }
}
