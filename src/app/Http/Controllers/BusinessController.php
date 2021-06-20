<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Perspective;

class BusinessController extends Controller
{
    //
    public function business(){
        // $data = DB::table('perspective_goal as perspective_table')
        //         ->join('business_goal', 'perspective_table.id_perspective', 'business_goal.id_perspective')
        //         ->select(
        //             'perspective_table.perspective as nama_perspective',
        //             'business_goal.desc_business as deskrip_business'
        //         )->get();
                // dd($data);
        $data = Perspective::all();
        return view('ITProcess.business', compact('data'));
    }

    public function goals(){
        return view('ITProcess.itgoals');
    }

    public function final(){
        return view('ITProcess.finalgoals');
    }
}
