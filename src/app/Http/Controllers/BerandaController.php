<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class BerandaController extends Controller
{
    //
    public function index()
    {
        $it_p = DB::table('it_process')->where('id_jenis_it', 1)->get();
        $it_a = DB::table('it_process')->where('id_jenis_it', 2)->get();
        $it_ds = DB::table('it_process')->where('id_jenis_it', 3)->get();
        $it_me = DB::table('it_process')->where('id_jenis_it', 4)->get();
        return view('beranda', compact('it_p', 'it_a', 'it_ds', 'it_me'));
    }
}
