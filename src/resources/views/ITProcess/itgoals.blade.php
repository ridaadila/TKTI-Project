@extends('layouts.navbar')

@section('title', 'IT Goals')
@section('content')

<div style="width: 100%; height: 50px; background-color: #bdd2b6;">
    <div class="container">
        <p class="h4 pt-2 text-white"><b> IT Goals </b></p>
    </div>
</div>

<main>
    <div class="mx-5 mt-5">
        <div class="p-3 mb-4 rounded-3" style="background-color: #e4efe7;">
            <div class="row">
                <div class="col">
                    <div class="container">
                        <h5><b> {{ $perspective->perspective}} </b></h5>
                        <p>{{ $perspective->desc}}</p>
                    </div>
                </div>
            </div>

            <div class="row mx-5">
                <div class="col">
                    <div class="container">
                        @foreach ($it_goals as $item)
                            <div class="col-10">{{$item->id_it_goals}})  {{$item->nama_it_goals}}</div>
                            <hr>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <div class="mx-5 mt-5">
        <div class="p-3 mb-4 rounded-3" style="background-color: #e4efe7;">
            <div class="row p-2">
                <div class="col">
                    <div class="container">
                        <h6><b> Judul pilihan business goals </b></h6>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="container row gap-5">
                    <div class="col rounded-3" style="background-color: #9ad3bc;">
                        <h1 class="text-center" style="color: #faf9f9;"><b> PO2 </b></h1>
                    </div>
                    <div class="col rounded-3" style="background-color: #9ad3bc;">
                         <h1 class="text-center" style="color: #faf9f9;"><b> PO2 </b></h1>
                    </div>
                    <div class="col rounded-3" style="background-color: #9ad3bc;">
                         <h1 class="text-center" style="color: #faf9f9;"><b> PO2 </b></h1>
                    </div>
                    <div class="col rounded-3" style="background-color: #9ad3bc;">
                         <h1 class="text-center" style="color: #faf9f9;"><b> PO2 </b></h1>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
</main>



@endsection