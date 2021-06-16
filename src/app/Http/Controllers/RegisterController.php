<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use App\User;
use PhpParser\Node\Stmt\Break_;

class RegisterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user =  DB::table('users')->get();
        dump($user);
        return view('registrasi');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

        $request->validate([
            'name' => 'required|min:3|max:50',
            'username' => 'required|min:3|max:50',
            'email' => 'required|email|unique:users',
            'password' => 'required|confirmed|min:6',
        ]);

        $passwordHash = Hash::make($request->password);

        $users = new User;

        // $users->user_id = Str::uuid();
        $users->name = $request->name;
        $users->name = $request->username;
        $users->email = $request->email;
        $users->password = $passwordHash;

        $users->save();
        return redirect('/login')->with('status', 'Data User Berhasil Ditambahkan!');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request;
        $user = new User;

        $user->NAMA_USER = $request->NAMA_USER;
        $user->USERNAME = $request->USERNAME;
        $user->NO_HANDPHONE = $request->NO_HANDPHONE;
        $user->ALAMAT = $request->ALAMAT;
        $user->EMAIL = $request->EMAIL;
        $user->PASSWORD = $request->PASSWORD;

        $user->save();
        return redirect('/login');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
