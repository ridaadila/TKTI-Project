@extends('layouts.navbar')

@section('title', 'IT Process')
@section('content')

<div style="width: 100%; height: 50px; background-color: #bdd2b6;">
    <div class="container">
        <p class="h4 pt-2 text-white"><b> {{$it_proses->kode_it}} : {{$it_proses->it_process}} </b></p>
    </div>
</div>

<main>
    <div class="mx-5 mt-4">
        <div class="p-3 mb-3 rounded-3" style="background-color: #e4efe7;">
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
                        <ul style="list-style-type: square">
                        @if ($item->level==$val)
                        <li><p>{{$item->pertanyaan}}</p></li>
                        <div class="mb-2">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="jawab[<?php print $count; ?>]" id="jawab[<?php print $count; ?>]" value="0">

                                <label class="form-check-label" for="jawab[<?php print $count; ?>]">Tidak Sama Sekali</label>
                            </div> <div class="col-sm-2"></div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="jawab[<?php print $count; ?>]" id="jawab[<?php print $count; ?>]" value="0.33">
                                <label class="form-check-label" for="jawab[<?php print $count; ?>]">Sedikit</label>
                            </div> <div class="col-sm-2"></div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="jawab[<?php print $count; ?>]" id="jawab[<?php print $count; ?>]" value="0.66">
                                <label class="form-check-label" for="jawab[<?php print $count; ?>]">Cukup Banyak</label>
                            </div> <div class="col-sm-2"></div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="jawab[<?php print $count; ?>]" id="jawab[<?php print $count; ?>]" value="1">
                                <label class="form-check-label" for="jawab[<?php print $count; ?>]">Sepenuhnya</label>
                            </div> <div class="col-sm-2"></div>
                            <?php $count+=1 ?>
                        </div>
                        @endif
                        </ul>
                        @endforeach
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>

    <div class="mx-5">
        <div class="p-3 mb-3 rounded-3">
            <div class="row align-items-start gap-5">
                <div class="col align-self-stretch" style="background-color: #e4efe7;">
                    <div class="container p-3">
                    <h5><b> Kuisioner Tingkat Kematangan Saat Ini (as is): </b></h5>
                    <div class="display-2"><b>2.68</b></div>
                    <div class="h1"><b>( Level 3 )</b></div>
                    </div>
                </div>

                <div class="col align-self-stretch" style="background-color: #e4efe7;">
                    <div class="container p-3">
                        <h5><b> Kuisioner Tingkat Kematangan Saat Ini (as is): </b></h5>
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
                        <p>Terdapat empat IT Process (Proses Teknologi Informasi) yang dapat dihitung tingkat kematangannya :</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        <div class="container container-fluid">
                            haha
                        </div>
                    </div>
                    <div class="col-8">
                        <div class="container container-fluid">
                            haha
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
</main>



@endsection