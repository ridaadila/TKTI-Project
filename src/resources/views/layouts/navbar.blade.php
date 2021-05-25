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
      <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container container-fluid">
          <a href="{{ url('/') }}" class="navbar-brand">
            <span class="fs-4"><b> Gap Analyzer </b></span>
          </a>

          <ul class="nav nav-pills">
            <li class="nav-item"><a href="#" class="nav-link" style="color:white; text-decoration: none;"> Beranda </a></li>
            <li class="nav-item"><a href="#" class="nav-link" style="color:white; text-decoration: none;"> Tentang </a></li>
            <li class="nav-item"><a href="#" class="nav-link" style="color:white; text-decoration: none;"> IT Process </a></li>
            <li class="nav-item"><a href="#" class="nav-link" style="color:white; text-decoration: none;"> Akun </a></li>
          </ul>
        </div>
      </nav>
    </header>

    <main>

      @yield('content')
    
      
      <hr class="featurette-divider">
      
      <footer class="container">
        <p class="float-end"><a href="#">Back to top</a></p>
        <p>&copy; 2017–2021 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </main>

    <script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

  </body>
</html>
