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

                    <div class="form-floating mt-5 mb-3">
                        <input type="email" class="form-control" style="background-color: #dddddd; text-decoration: none;" id="floatingInput" placeholder="name@example.com">
                        <label for="floatingInput" style="color:#536162; text-decoration: none;">Email address</label>
                    </div>
                    <div class="form-floating">
                        <input type="password" class="form-control" style="background-color: #dddddd; text-decoration: none;" id="floatingPassword" placeholder="Password">
                        <label for="floatingPassword" style="color:#536162; text-decoration: none;">Password</label>
                    </div>
                    
                    <div class="float-end my-3 d-grid col-5">
                        <button type="submit" class="btn btn-light" style="background-color: #96bb7c; text-decoration: none;">
                            <a href="{{ url('/') }}" style="color:aliceblue; text-decoration: none;"> Submit </a>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
