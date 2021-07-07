<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <div class="col-10 mt-5">
            <div class="card ">
                <div class="card-header">
                    <h3 class="text-center">Form Register</h3>
                </div>
                <form action="{{ route('register') }}" method="post">
                    @csrf
                    <div class="card-body ">
                        @if(session('errors'))
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            Something it's wrong:
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                            <ul>
                                @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                        @endif
                        <div class="container">
                            <div class="row">
                                <!-- <div class="col-6"> -->
                                <div class="form-group col-4">
                                    <label for=""><strong>Nama Lengkap</strong></label>
                                    <input type="text" name="nama_user" class="form-control" placeholder="Nama Lengkap">
                                </div>
                                <!-- </div> -->
                                <div class="form-group col-4">
                                    <label for=""><strong>Username</strong></label>
                                    <input type="text" name="username" class="form-control" placeholder="Username">
                                </div>

                            </div>

                            <div class="form-group col-8">
                                <label for=""><strong>no_handphone</strong></label>
                                <input type="text" name="no_handphone" class="form-control" placeholder="Handphonep">
                            </div>
                            <div class="form-group col-8">
                                <label for=""><strong>alamat</strong></label>
                                <input type="text" name="alamat" class="form-control" placeholder="Alamat">
                            </div>
                            <div class="form-group col-8">
                                <label for=""><strong>Email</strong></label>
                                <input type="text" name="email" class="form-control" placeholder="Email">
                            </div>
                            <div class="row">
                                <div class="form-group col-4">
                                    <label for=""><strong>Password</strong></label>
                                    <input type="password" name="password" class="form-control" placeholder="Password">
                                </div>
                                <div class="form-group col-4">
                                    <label for=""><strong>Konfirmasi Password</strong></label>
                                    <input type="password" name="password_confirmation" class="form-control" placeholder="Password">
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="card-footer col-4">
                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                        <p class="text-center">Sudah punya akun? <a href="{{ route('login') }}">Login</a> sekarang!</p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>