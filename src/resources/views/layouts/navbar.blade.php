<!-- AMBIL DARI CHECKOUT EXAMPLES BOOTSTRAPS -->
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <title> Beranda </title>

    {{-- <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/"> --}}

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    {{-- <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous"> --}}

    <!-- Custom styles for this template -->
    <link href="sticky-footer.css" rel="stylesheet">
  </head>

  <body class="bg-light">
    <header>
      <nav class="navbar navbar-expand-md navbar-light">
        <div class="container container-fluid">
          <a href="{{ url('/') }}" class="navbar-brand">
            <span class="fs-4"><b> Gap Analyzer </b></span>
          </a>

          <ul class="nav nav-pills">
            <li class="nav-item"><a href="#" class="nav-link" style="color:black; text-decoration: none;"> Beranda </a></li>
            <li class="nav-item"><a href="#" class="nav-link" style="color:black; text-decoration: none;"> Tentang </a></li>
            <li class="nav-item"><a href="#" class="nav-link" style="color:black; text-decoration: none;"> IT Process </a></li>
            <li class="nav-item"><a href="#" class="nav-link" style="color:black; text-decoration: none;"> Akun </a></li>
          </ul>
        </div>
      </nav>
    </header>

    <main>

      @yield('content')
      
      <hr class="featurette-divider">
      
      <footer class="p-3">
        <div class="container container-fluid">
          <p class="float-end">
            <a href="#" style="color:black; text-decoration: none;">
              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-chevron-double-up" viewBox="0 0 16 16">
                  <path fill-rule="evenodd" d="M7.646 2.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 3.707 2.354 9.354a.5.5 0 1 1-.708-.708l6-6z"/>
                  <path fill-rule="evenodd" d="M7.646 6.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 7.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
              </svg> 
            </a>
          </p>
          <p>&copy; 2017–2021 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
        </div>
      </footer>
    </main>

    <script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

  </body>
</html>
