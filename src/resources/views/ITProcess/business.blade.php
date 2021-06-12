@extends('layouts.navbar')

@section('title', 'Business Goals')
@section('content')

<div style="width: 100%; height: 50px; background-color: #bdd2b6;">
    <div class="container">
        <p class="h4 pt-2 text-white"><b> Business Goals </b></p>
    </div>
</div>

<main>
    <!-- tinggal diulang pakai foreach -->
    <div class="mx-5 mt-5">
        <div class="p-3 mb-4 rounded-3" style="background-color: #e4efe7;">
            <div class="container-fluid py-5">
                <div class="row">
                    <div class="col-3">
                        <h1 class="display-5 fw-bold"> [nama bagian bussiness goals] </h1>
                    </div>
                    <div class="col-9">
                        <div class="row me-5">
                            <div class="col-10">yayaya</div>
                            <hr>
                            <div class="col-10">yayaya</div>
                            <hr>
                            <div class="col-10">yayaya</div>
                            <hr>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- endforech -->
</main>



@endsection