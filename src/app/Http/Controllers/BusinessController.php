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

    public function goals($id, $goals){
        $perspective = DB::table('perspective_goal')
        ->join('business_goal', 'business_goal.id_perspective', 'perspective_goal.id_perspective')
        ->where('business_goal.id_business', $goals)->where('business_goal.id_perspective', $id)
        ->select('perspective_goal.perspective as perspective',
        'business_goal.desc_business as desc')
        ->first();
        $it_goals = DB::table('mempunyai')->join('it_goals', 'it_goals.id_it_goals', 'mempunyai.id_it_goals')
                    ->join('business_goal', 'business_goal.id_business', 'mempunyai.id_business')
                    ->where('mempunyai.id_business', $goals)
                    ->select(
                        'it_goals.id_it_goals as id_it_goals',
                        'it_goals.it_goals as nama_it_goals'
                    )
                    ->get();
        return view('ITProcess.itgoals', compact('perspective', 'it_goals'));
    }

    public function final(){
        return view('ITProcess.finalgoals');
    }
}
