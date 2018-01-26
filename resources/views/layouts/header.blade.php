<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin TKIPedia | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('assets/dist/fonts/font-awesome.min.css')}}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{ asset('assets/dist/css/ionicons.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('assets/dist/css/AdminLTE.min.css') }}">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="{{ asset('assets/dist/css/skins/_all-skins.min.css') }}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('assets/dist/fonts/font-awesome.min.css')}}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{ asset('assets/dist/css/ionicons.min.css')}}">
  <!-- iCheck -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/iCheck/flat/blue.css') }}">
  <!-- Morris chart -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/morris/morris.css') }}">
  <!-- jvectormap -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css') }}">
  <!-- Date Picker -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/datepicker/datepicker3.css') }}">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/daterangepicker/daterangepicker.css') }}">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}">
  <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/datatables/dataTables.bootstrap.css')}}">
  <!-- Select2 -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/select2/select2.min.css') }}">

<style type="text/css" media="screen">
 td div {
   width: 200px;
   white-space: nowrap;
   overflow: hidden;         
   text-overflow: ellipsis;
 }
 #cut {
    white-space: nowrap; 
    width: 12em; 
    overflow: hidden;
    text-overflow: ellipsis; 
    border: 1px solid #000000;
}
</style>
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="{{ url('/') }}" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>TKIPedia</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="{{ asset(Auth::user()->picture) }}" class="user-image" alt="User Image">
              <span class="hidden-xs">{{ Auth::user()->name }}</span>
              </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="{{ asset(Auth::user()->picture) }}" class="img-circle" alt="User Image">
                <p>
                  {{ Auth::user()->name}} ({{ Auth::user()->email }})
                  @if (Auth::user()->role!='admin' and Auth::user()->role!='iklan') 
                    <small> ID Apps {{ Auth::user()->active_app}}  : {{ Auth::user()->active_app_name}} </small>
                  @endif
                  <small>Role: {{ Auth::user()->role }}</small>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="{{ url('/updateimg') }}" class="btn btn-default btn-flat">Update Image Profil</a>
                </div>
                <div class="pull-right">
                  <a href="{{ url('/logout') }}" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{ asset(Auth::user()->picture) }}" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>{{ Auth::user()->nama }}</p>
            <a href="#"><i class="fa fa-circle text-success"></i> Online</a> 
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      @if(Auth::user()->role=='admin')
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="{{ url('/dashboard') }}">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
        <li class="active treeview">
          <a href="{{ url('/user') }}">
            <i class="fa fa-users"></i> <span>User</span>
          </a>
        </li>
        <li class="active treeview">
          <a href="{{ url('/artikels') }}">
            <i class="fa fa-newspaper-o"></i> <span>Artikel</span>
          </a>
        </li>
        <li class="active treeview">
        <a href="{{ url('/informasis') }}">
          <i class="fa fa-info"></i> <span>Informasi</span>
        </a>
      </li>
      <li class="active treeview">
          <a href="{{ url('/tanya') }}">
            <i class="fa fa-info"></i> <span>Pertanyaaan</span>
          </a>
        </li>
      <li class="active treeview">
          <a href="{{ url('/faq') }}">
            <i class="fa fa-info"></i> <span>Frequently Asked Question</span>
          </a>
        </li>
        <li class="treeview">
          <a href="{{ url('/perundangans') }}">
            <i class="fa fa-check-circle"></i> <span>Perundangan</span>
          </a>
        </li>
        </ul>
        @elseif(Auth::user()->role=='entry')
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="{{ url('/dashboard') }}">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
        <li class="active treeview">
          <a href="{{ url('/artikels') }}">
            <i class="fa fa-newspaper-o"></i> <span>Artikel</span>
          </a>
        </li>
        <li class="active treeview">
        <a href="{{ url('/informasis') }}">
          <i class="fa fa-info"></i> <span>Informasi</span>
        </a>
        </li>
          <li class="active treeview">
            <a href="{{ url('/tanya') }}">
              <i class="fa fa-info"></i> <span>Pertanyaaan</span>
            </a>
          </li>
          <li class="active treeview">
            <a href="{{ url('/faq') }}">
              <i class="fa fa-info"></i> <span>Frequently Asked Question</span>
            </a>
          </li>
          <li class="treeview">
            <a href="{{ url('/perundangans') }}">
              <i class="fa fa-check-circle"></i> <span>Perundangan</span>
            </a>
          </li>
        </ul>
        @elseif(Auth::user()->role=='publisher')
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="{{ url('/dashboard') }}">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
        <li class="active treeview">
          <a href="{{ url('/artikels') }}">
            <i class="fa fa-newspaper-o"></i> <span>Artikel</span>
          </a>
        </li>
        <li class="active treeview">
        <a href="{{ url('/informasis') }}">
          <i class="fa fa-info"></i> <span>Informasi</span>
        </a>
        </li>
          <li class="active treeview">
            <a href="{{ url('/tanya') }}">
              <i class="fa fa-info"></i> <span>Pertanyaaan</span>
            </a>
          </li>
          <li class="active treeview">
            <a href="{{ url('/faq') }}">
              <i class="fa fa-info"></i> <span>Frequently Asked Question</span>
            </a>
          </li>
          <li class="treeview">
            <a href="{{ url('/perundangans') }}">
              <i class="fa fa-check-circle"></i> <span>Perundangan</span>
            </a>
          </li>
        </ul>
        @endif
    </section>
    <!-- /.sidebar -->
  </aside>
