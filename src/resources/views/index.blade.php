@extends('layouts.navbar')

@section('content')

<!-- header ala ala corousel -->
<div class="p-md-5 text-center text-white" style="width: 100%; background-color: #96bb7c;">
    <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 fw-normal"> Gap Analyzer </h1>
        <p class="lead fw-normal"> Kami menyediakan layanan Analisa Gap otomatis bagi perusahaan anda </p>
        <button type="button" class="btn btn-light"><a href="" style="color:green; text-decoration: none;"><b> Coba Sekarang! </b></a></button>
    </div>
</div>

<!-- gap analyzer -->
<div class="p-4" style="width: 100%; height:100px;">
    <div class="container container-fluid">
        <h4 class="d-flex justify-content-center"><b> Tentang Gap Analyzer </b></h4>
    </div>
</div>

<div class="row align-items-start">
    <div class="col align-self-stretch" style="background-color: #96bb7c;">
        <div class="container pt-3">
            <h5><b> Apa yang disediakan oleh Gap Analyzer? </b></h5>
            <p>
                Kami akan menyediakan hasil Analisa Gap beserta strategi perbaikan
                yang dapat anda terapkan ke perusahaan anda. Rekomendasi serta Analisa 
                yang kami buat adalah berdasarkan <i>Framework</i> COBIT 4.1.  
            </p>
            <h5><b> Apa itu Analisa Gap (<i>Gap Analyzer</i>)? </b></h5>
            <p>
                Analisa Gap merupakan proses membandingkan tingkat kematangan tata kelola teknologi informasi
                saat ini (<i>as-is</i>) dengan yang diharapkan (<i>to-be</i>). Dengan kemudian
                memperoleh informasi mengenai IT Process mana saja yang tidak sesuai dengan 
                tingkat kematangan yang diinginkan. 
            </p>
        </div>
    </div>

    <div class="col align-self-stretch" style="background-color: #bdd2b6;">
        <div class="container pt-3">
            <h5><b> Bagaimana cara kerjanya? </b></h5>
            <p>
                Anda perlu memilih IT Process yang ingin Anda uji, kemudian mengisi kuisioner
                terkait perusahaan Anda untuk mendapatkan tingkat kematangan perusahaan Anda 
                saat ini (<i>as-is</i>).
            </p>
            <p>
                Kemudian Anda perlu menentukan target tingkat kematangan yang diharapkan untuk 
                perusahaan Anda (<i>to-be</i>).
            </p>
            <p>
                Dari informasi tersebut, akan kami proses menjadi hasil Analisa yang berisi strategi-
                strategi perbaikan yang dapat Anda terapkan ke perusahaan Anda.
            </p>
        </div>
    </div>
</div>
<!-- end gap analyzer -->

<!-- IT Process -->
<div style="width: 100%; height:100px;">
    <h4 class="pt-4 d-flex justify-content-center"><b> IT Process (Proses Teknologi Informasi) </b></h4>
</div>

<div class="row align-items-start">
    <div class="col-2 align-self-stretch" style="background-color: #96bb7c;">
        <div class="">
            <img src="" alt="">
        </div>
    </div>
    <div class="col-10 align-self-stretch" style="background-color: #bdd2b6;">
        <div class="container pt-3">
            <p>Terdapat empat IT Process (Proses Teknologi Informasi) yang dapat dihitung tingkat kematangannya :</p>
        </div>

        <div class="row align-items-start">
            <div class="col mx-3" style="background-color: #f6f6f6;">
                <div class="container" style="color: #91c788;">
                    <p><b>1. PO - Plan and Organize</b></p>
                </div>
            </div>
            <div class="col mb-3 " style="background-color: #f6f6f6;">
                <div class="container" style="color: #91c788;">
                    <p><b>2. AI - Acquire and Implement</b></p>
                </div>
            </div>
        </div>
        <div class="row align-items-start">
            <div class="col mx-3 mb-3" style="background-color: #f6f6f6;">
                <div class="container" style="color: #91c788;">
                    <p><b>3. DS - Deliver and Support</b></p>
                </div>
            </div>
            <div class="col mb-3" style="background-color: #f6f6f6;">
                <div class="container" style="color: #91c788;">
                    <p><b>4. ME - Monitor and Evaluate</b></p>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- end IT Process -->

@endsection