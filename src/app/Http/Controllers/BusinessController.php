<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Perspective;
use App\Goals;

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
        $temp = array();
        foreach($it_goals as $val)
        {
            array_push($temp, $val->id_it_goals);
        }

        $proses = DB::table('mempunyai_3')
                        ->join('it_process', 'it_process.id_it_process', 'mempunyai_3.id_it_process')
                        ->whereIn('mempunyai_3.id_it_goals', $temp)
                        ->select(
                            'mempunyai_3.id_it_goals as id_goals',
                             'it_process.kode_it',
                             'it_process.id_it_process'   )
                        ->get();
        return view('ITProcess.itgoals', compact('perspective', 'it_goals', 'temp', 'proses'));
    }

    public function final($id){
        $level = [0,1,2,3,4,5];
        $it_proses = DB::table('it_process')->where('id_it_process', $id)
                            ->select('kode_it','it_process')->first();
        $data = DB::table('list_pertanyaan')
                ->where('id_it_process', $id)
                ->select('list_pertanyaan.deskrip_pertanyaan as pertanyaan', 
                        'list_pertanyaan.level as level')->get();
        return view('ITProcess.finalgoals', compact('data','level','it_proses'));
    }

    public function hitung(Request $request, $id)
    {
        echo "jawab[1] : " . $request->jawab[1] . gettype($request->jawab[1]) . "\n";
        echo "jawab[2] : " . $request->jawab[2] . "\n";
        echo count($request->level) . "\n";
        echo count($request->jawab) . "\n";
        echo "id : " . $id . "\n";
    }
}
