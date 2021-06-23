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
                            ->select('kode_it','it_process', 'id_it_process')->first();
        $data = DB::table('list_pertanyaan')
                ->where('id_it_process', $id)
                ->select('list_pertanyaan.deskrip_pertanyaan as pertanyaan', 
                        'list_pertanyaan.level as level',
                        'list_pertanyaan.id_pertanyaan as id_pertanyaan')
                        ->get();
        return view('ITProcess.finalgoals', compact('data','level','it_proses'));
    }

    public function hitung(Request $request, $id)
    {
        $hasilMaturity =  $this->hitungMaturityLevel($request->jawab, $request->level);
        $round_data = (int)(round($hasilMaturity));
        $getJson = $this->insertJson($request->pertanyaan, $request->jawab, $request->level ,$id, $hasilMaturity);
        $hasilJawab = json_decode($getJson,true);
        $idx_level = 0;
        $it_proses = DB::table('it_process')->where('id_it_process', $id)
        ->select('kode_it','it_process', 'id_it_process')->first();
        $data = DB::table('list_pertanyaan')
                ->where('id_it_process', $id)
                ->select('list_pertanyaan.deskrip_pertanyaan as pertanyaan', 
                        'list_pertanyaan.level as level',
                        'list_pertanyaan.id_pertanyaan as id_pertanyaan')
                        ->get();
        $level = [0,1,2,3,4,5];
        return view('ITProcess.hasilmaturity', compact('it_proses', 'idx_level', 'hasilJawab', 'level', 'data', 'hasilMaturity', 'round_data'));
        
    }

    public function insertJson($pertanyaan, $jawab, $level ,$id, $maturity)
    {
        $temp_array = array();
        $count_jawab = 1;
        $count_level = 0;
        foreach($pertanyaan as $id_pertanyaan) {
            $data = array(
                "nilai"=>(float)($jawab[$count_jawab]),
                "level"=>(int)($level[$count_level])
            );
            $temp_array[$id_pertanyaan] = $data;
            $count_jawab++;
            $count_level++;
        }
        $json = json_encode($temp_array);
        // echo gettype($json);
        $insert = DB::table('jawaban_it_proses_kuesioner')->insert([
            'id_it_process'=>$id,
            'jawaban'=>$json,
            'maturity_as_is'=>$maturity,
        ]);

        if($insert)
        {
            return $json;
        }
    }

    public function hitungMaturityLevel($jawab, $level) 
    {
        $declare_level = ["0","1","2","3","4","5"];
        $hasil_array = array();
        $count_jawab = 1;
        foreach($declare_level as $levelCobit)
        {

            $hitungPertanyaanLevel = 0;
            $totalNilai = 0;

            foreach($level as $levelJawab)
            {
                if($levelJawab==$levelCobit)
                {
                    $totalNilai += (float)($jawab[$count_jawab]);
                    $count_jawab++;
                    $hitungPertanyaanLevel++;
                }

            }

            $data = array(
                "total_nilai"=>$totalNilai,
                "jum_pertanyaan"=>$hitungPertanyaanLevel
            );
            $hasil_array[$levelCobit] = $data;
        }

        return $this->getStepOne($hasil_array);
    }

    public function getStepOne($hasil_array)
    {
        $compliance = array();
        foreach($hasil_array as $data)
        {
            array_push($compliance, ($data['total_nilai']/$data['jum_pertanyaan']));
        }

        $totalCompliance = 0;

        foreach($compliance as $com)
        {
            $totalCompliance += $com;
        }

        return $this->getStepTwo($compliance,$totalCompliance);

    }

    public function getStepTwo($compliance,$totalCompliance)
    {
        $complianceStepTwo = array();

        foreach($compliance as $data)
        {
            array_push($complianceStepTwo, $data/$totalCompliance);
        }

        return $this->getStepThree($complianceStepTwo);

    }

    public function getStepThree($complianceStepTwo)
    {
        $levelCobit = [0,1,2,3,4,5];
        $index = 0;
        $total = 0;
        foreach($levelCobit as $level)
        {
            $hasilKali = $level*$complianceStepTwo[$index];
            $total += $hasilKali;
            $index++;
        }

        return $total;
    }
}
