@extends('layouts.navbar')

@section('title', 'Business Goals')
@section('content')

<div style="width: 100%; height: 50px; background-color: #bdd2b6;">
    <div class="container">
        <p class="h4 pt-2 text-white"><b> Business Goals </b></p>
    </div>
</div>

<main>
    @foreach ($data as $item)
    <div class="mx-5 mt-5">
        <div class="p-3 mb-4 rounded-3" style="background-color: #e4efe7;">
            <div class="container-fluid py-5">
                <div class="row">
                    <div class="col-3">
                        {{-- <input type="hidden" name="id_perspective" value="{{$item->ID_PERSPECTIVE}}"> --}}
                        <h1 class="display-5 fw-bold" style="justify-content: center; display: flex; align-items: center;"> {{$item->PERSPECTIVE}} </h1>
                    </div>
                    <div class="col-9">
                        <div class="row me-5">
                            @foreach($item->business as $dt)
                            <div class="col-10">
                                <a class="text-decoration-none" style="color: blue; text-decoration: none;" href="{{url('IT_goals/' . $item->ID_PERSPECTIVE . '/' . $dt->ID_BUSINESS)}}">
                                    {{-- <input type="hidden" name="id_business" value="{{$dt->ID_BUSINESS}}"> --}}
                                    {{$dt->DESC_BUSINESS}}
                                    {{-- <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg> --}}
                                </a>
                            </div>
                            <hr>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endforeach
    <!-- endforech -->
</main>



@endsection