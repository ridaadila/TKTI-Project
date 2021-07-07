<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <title>Login</title>
</head>

<body>
    <div class="row align-items-start align-content-stretch flex-wrap">
        <div class="col align-self-stretch">
            <img src="{{url('/images/loginpsd.jpg')}}" width="100%" height="700" alt="image">
        </div>

        <!-- form -->
        <div class="col align-self-stretch">
            <div class="container container-fluid mt-5">
                <h2 style="color: #373a40; text-decoration: none;"><b> Sign-In </b></h2>
                @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
                @endif
                <form class="user" method="post" action="/login">
                    @csrf
                    <div class="form-floating mb-3">
                        <input type="email" class="form-control @error('email') is-invalid @enderror" style="background-color: #dddddd; text-decoration: none;" id="floatingInput" placeholder="name@example.com" name="email" value="{{ old('email') }}">
                        <label for="floatingInput" style="color:#536162; text-decoration: none;">Email address</label>
                        @error('email')
                        <div class="invalid-feedback">{{ $message }} </div>
                        @enderror
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control @error('PASSWORD') is-invalid @enderror" style="background-color: #dddddd; text-decoration: none;" id="floatingPassword" placeholder="Password" name="PASSWORD" value="{{ old('PASSWORD') }}">
                        <label for="floatingPassword" style="color:#536162; text-decoration: none;">Password</label>
                        @error('PASSWORD')
                        <div class="invalid-feedback">{{ $message }} </div>
                        @enderror
                    </div>
                    <!-- submit -->
                    <div class="float-end my-3 d-grid ">
                        <button type="submit" class="btn btn-light" style="background-color: #96bb7c;">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>