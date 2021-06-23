@extends('layouts.navbar')

@section('title', 'IT Process')
@section('content')

<div style="width: 100%; height: 50px; background-color: #bdd2b6;">
    <div class="container">
        <p class="h4 pt-2 text-white"><b> {{$it_proses->kode_it}} : {{$it_proses->it_process}} </b></p>
    </div>
</div>

<form action="{{url('rekomendasi/' . $it_proses->id_it_process)}}">
<main>
    <div class="mx-5 mt-4">
        <div class="p-3 mb-3 rounded-3" style="background-color: #e4efe7;">
            <form method="GET" action="{{url('IT_process/hitung/' . $it_proses->id_it_process)}}">
                @csrf
            <div class="container">
                <h5><b> Kuisioner Tingkat Kematangan Saat Ini (as is): </b></h5>
                <hr>
            </div>
            <?php $count=1; ?>
            @foreach ($level as $key=>$val)
            <div class="row mb-3">
                <div class="col">
                    <div class="container">
                        <h6><b> Level {{$val}} </b></h6>
                        @foreach ($data as $item)
                        @if ($item->level==$val)
                        <p>{{$count}}) {{$item->pertanyaan}}</p>
                        <input type="hidden" name="id_pertanyaan[]" value="{{$item->id_pertanyaan}}">
                        <input type="hidden" name="pertanyaan[]" value="{{$item->pertanyaan}}">
                        <input type="hidden" name="level[]" value="{{$item->level}}">
                        <div class="mb-2">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="jawab[<?php print $count; ?>]" id="jawab[<?php print $count; ?>]" value="0" @if ($hasilJawab["$item->id_pertanyaan"]['nilai']==0) checked @endif>
                                <label class="form-check-label" for="jawab[<?php print $count; ?>]">Tidak Sama Sekali</label>
                            </div> <div class="col-sm-2"></div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="jawab[<?php print $count; ?>]" id="jawab[<?php print $count; ?>]" value="0.33" @if ($hasilJawab["$item->id_pertanyaan"]['nilai']==0.33) checked @endif>
                                <label class="form-check-label" for="jawab[<?php print $count; ?>]">Sedikit</label>
                            </div> <div class="col-sm-2"></div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="jawab[<?php print $count; ?>]" id="jawab[<?php print $count; ?>]" value="0.66" @if ($hasilJawab["$item->id_pertanyaan"]['nilai']==0.66) checked @endif>
                                <label class="form-check-label" for="jawab[<?php print $count; ?>]">Cukup Banyak</label>
                            </div> <div class="col-sm-2"></div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="jawab[<?php print $count; ?>]" id="jawab[<?php print $count; ?>]" value="1" @if ($hasilJawab["$item->id_pertanyaan"]['nilai']==1) checked @endif>
                                <label class="form-check-label" for="jawab[<?php print $count; ?>]">Sepenuhnya</label>
                            </div> <div class="col-sm-2"></div>
                            <?php $count+=1 ?>
                        </div>
                        @endif
                        @endforeach
                    </div>
                </div>
            </div>
            @endforeach
            {{-- <div class="row">
                <div class="col-12">
                    <button type="submit" class="btn btn-primary btn-lg float-end">Kirim</button>
                </div>
            </div> --}}
        </form>
        </div>
    </div>

    <div class="mx-5">
        <div class="p-3 mb-3 rounded-3">
            <div class="row align-items-start gap-5">
                <div class="col align-self-stretch" style="background-color: #e4efe7;">
                    <div class="container p-3">
                    <h5><b> Maturity Tingkat Kematangan Saat Ini (as is): </b></h5>
                    <input type="hidden" name="hasilMaturity" value="{{number_format($hasilMaturity, 3, '.', '')}}">
                    <input type="hidden" name="roundData" value="{{$round_data}}">
                    <div class="display-2"><b>{{ number_format($hasilMaturity, 3, '.', '') }}</b></div>
                    <div class="h1"><b>( Level {{$round_data}} )</b></div>
                    </div>
                </div>

                <div class="col align-self-stretch" style="background-color: #e4efe7;">
                    <div class="container p-3">
                        <h5><b> Maturity Target (to be): </b></h5>
                        {{-- <input type="number" name="maturity_target"> {{$maturityTarget}} --}}
                        <div class="display-2"><b>{{ $maturityTarget }}</b></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mx-5">
        <div class="p-3 mb-4 rounded-3" style="background-color: #e4efe7;">
            <div class="row align-items-start">
                <div class="col-10 align-self-stretch">
                    <div class="container pt-3">
                        <p>Terdapat beberapa tahapan rekomendasi yang harus dilakukan :</p>
                    </div>
                </div>
                <?php $i=1; ?>
                @foreach ($unik_level as $unik)
                    <div class="row">
                        <div class="col-12">
                            <div class="container container-fluid">
                                <b>Perbaikan Tahap ke - {{ $i }}</b> <br> <br>
                                <?php $no = 1; ?>
                                @foreach ($rekomen as $rekomendasi)
                                    @if (($rekomendasi['rekomendasi']!="") && ($rekomendasi['level']==$unik))
                                       {{$no}}) {{$rekomendasi['pertanyaan']}} <b>Rekomendasi Perbaikan : {{$rekomendasi['rekomendasi']}}</b>
                                       <br>
                                    @else
                                     <?php continue; ?>
                                    @endif
                                    <?php $no++; ?>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <br> <br>
                    <?php $i++; ?>
                @endforeach
            </div>
        </div>
    </div>

    
</main>
</form>



@endsection