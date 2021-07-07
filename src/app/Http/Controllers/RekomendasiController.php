<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Perspective;
use App\Goals;

class RekomendasiController extends Controller
{

    public function index(Request $request, $id)
    {
        $hasilMaturity =  (float)($request->hasilMaturity);
        $round_data = (int)($request->roundData);
        $generateHasil = $this->generateJson($request->id_pertanyaan, $request->pertanyaan, $request->jawab, $request->level);
        $hasilRekomen = $this->proses($request->maturity_target, $hasilMaturity,$generateHasil, $round_data);
        // $this->insertToRekomen($hasilRekomen);

        $rekomen = json_decode($hasilRekomen, true);
        $unik_level = $this->getLevelUnique($rekomen);
        $maturityTarget = $request->maturity_target;
        $getJson = $this->insertJson($request->id_pertanyaan, $request->jawab, $request->level);
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
        $insert = $this->insertData($hasilRekomen, $maturityTarget, $request->id_jawaban);

        return view('ITProcess.hasilrekomen', compact('unik_level', 'it_proses', 'idx_level', 'hasilJawab', 'rekomen', 'level', 'data', 'hasilMaturity', 'maturityTarget', 'round_data'));
        
    }

    public function insertData($hasilRekomen, $maturityTarget, $id)
    {
        DB::table('jawaban_it_proses_kuesioner')->where('id_jawaban', $id)->update([
            'maturity_target'=>$maturityTarget,
            'rekomendasi'=>$hasilRekomen
        ]);
    }

    public function insertJson($pertanyaan, $jawab, $level)
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
        return $json;
    }

    // public function insertToRekomen($hasilRekomen)
    // {

    // }

    public function proses($maturity_target, $hasilMaturity, $generateHasil, $round_data)
    {
        $hasil_json = array();
        $deskrip_rekomendasi = array();
        $isi = "";
        foreach($generateHasil as $data)
        {
            if(strpos($data['pertanyaan'],"Apakah")!==false)
            {
                str_replace("Apakah", "", $data['pertanyaan']);       
            }
            if(strpos($data['pertanyaan'],"Sejauh mana")!==false)
            {
                str_replace("Sejauh mana", "", $data['pertanyaan']);       
            }

            // if($hasilMaturity!=$round_data)
            // {
                $asLevel = (int)(floor($hasilMaturity));
                $targetLevel = (int)(floor($maturity_target));
                if($data['level']<=$targetLevel) {
                    // echo "data nilai : ". $data['nilai'] . "\n";
                    $rekomendasi = "";
                    if((int)($data['nilai'])===0) {
                        $rekomendasi = "Perlu dilakukan usaha";
                    }
                    if($data['nilai']===0.33)
                    {
                        $rekomendasi = "Perlu melakukan/menerapkan";
                    }
                    if($data['nilai']===0.66)
                    {
                        $rekomendasi = "Perlu ditingkatkan";
                    }
                    if($data['nilai']===1)
                    {
                        continue;
                    }
                // }

                $isi = array(
                    'pertanyaan'=>$data['pertanyaan'],
                    'rekomendasi'=>$rekomendasi,
                    'level'=>$data['level'],
                    'nilai'=>$data['nilai']
                );

                $hasil_json[$data['id_pertanyaan']] = $isi;

            }
            else {
                continue;
            }
        }

        $fix_hasil = json_encode($hasil_json);
        return $fix_hasil;
    }

    public function getLevelUnique($rekomen)
    {
        $arrayunik = array();
        foreach($rekomen as $rekom) 
        {
            array_push($arrayunik, $rekom['level']);
        }
        $unik = array_unique($arrayunik);
        return $unik;
    }

    public function generateJson($id_pertanyaan, $pertanyaan, $jawab, $level)
    {
        $temp_array = array();
        $count_jawab = 1;
        $count_level = 0;
        foreach($id_pertanyaan as $id) {
            $data = array(
                "id_pertanyaan"=>(int)$id,
                "nilai"=>(float)($jawab[$count_jawab]),
                "level"=>(int)($level[$count_level]),
                "pertanyaan"=>$pertanyaan[$count_level]
            );
            $temp_array[$id] = $data;
            $count_jawab++;
            $count_level++;
        }
        $json = json_encode($temp_array);
        $hasil = json_decode($json,true);
        return $hasil;
    }
}