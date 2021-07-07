<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use App\User;

class AuthController extends Controller
{
    //
    public function showFormLogin()
    {
        if (Auth::check()) { // true sekalian session field di users nanti bisa dipanggil via Auth
            //Login Success
            return redirect()->route('/beranda');
        }
        return view('login');
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:3',
        ]);

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            // Authentication passed...
            return redirect()->intended('/beranda');
        }
    }

    public function showFormRegister()
    {
        return view('register');
    }

    public function register(Request $request)
    {
        $rules = [
            'nama_user'             => 'required|min:3|max:50',
            'username'              => 'required|min:3|max:35',
            'no_handphone'          => 'required|min:12',
            'alamat'                => 'required|min:3|max:100',
            'email'                 => 'required|email|unique:users,email',
            'password'              => 'required|confirmed'
        ];

        $messages = [
            'nama_user.required'         => 'Nama Lengkap wajib diisi',
            'nama_user.min'              => 'Nama lengkap minimal 3 karakter',
            'nama_user.max'              => 'Nama lengkap maksimal 50 karakter',
            'username.required'              => 'Username wajib diisi',
            'username.min'                   => 'Username minimal 3 karakter',
            'username.max'                   => 'handphone maksimal 35 karakter',
            'no_handphone.required'              => 'handphone wajib diisi',
            'no_handphone.min'                   => 'Username minimal 12 karakter',
            'alamat.required'              => 'alamat wajib diisi',
            'alamat.min'                   => 'alamat minimal 3 karakter',
            'alamat.max'                   => 'alamat maksimal 100 karakter',
            'email.required'        => 'Email wajib diisi',
            'email.email'           => 'Email tidak valid',
            'email.unique'          => 'Email sudah terdaftar',
            'password.required'     => 'Password wajib diisi',
            'password.confirmed'    => 'Password tidak sama dengan konfirmasi password'
        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput($request->all);
        }

        $user = new User;
        $user->nama_user = ucwords(strtolower($request->nama_user));
        $user->username = ucwords(strtolower($request->username));
        $user->no_handphone = ucwords(strtolower($request->no_handphone));
        $user->alamat = ucwords(strtolower($request->alamat));
        $user->email = strtolower($request->email);
        $user->password = Hash::make($request->password);
        // $user->email_verified_at = \Carbon\Carbon::now();
        $simpan = $user->save();

        if ($simpan) {
            Session::flash('success', 'Register berhasil! Silahkan login untuk mengakses data');
            return redirect()->route('login');
        } else {
            Session::flash('errors', ['' => 'Register gagal! Silahkan ulangi beberapa saat lagi']);
            return redirect()->route('register');
        }
    }

    public function logout()
    {
        Auth::logout(); // menghapus session yang aktif
        return redirect()->route('login');
    }
}
