<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <title>Visitor Log</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-touch-fullscreen" content="yes">
        <!-- Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700' rel='stylesheet' type='text/css'>
        <link href="{{ asset('fonts/font-awesome/css/font-awesome.min.css') }}" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.1/css/all.css">
        <!-- Styles -->
        <link href="{{ asset('css/styles.css') }}" type="text/css" rel="stylesheet"> <!-- Core CSS with all styles -->
        <link href="{{ asset('css/custom.css') }}" type="text/css" rel="stylesheet"> <!-- Custom styles -->
        <link href="{{ asset('plugins/jstree/dist/themes/avalon/style.min.css') }}" type="text/css" rel="stylesheet"> <!-- jsTree -->
        <link href="{{ asset('plugins/codeprettifier/prettify.css') }}" type="text/css" rel="stylesheet"> <!-- Code Prettifier -->
        <link href="{{ asset('plugins/iCheck/skins/minimal/blue.css') }}" type="text/css" rel="stylesheet"> <!-- iCheck -->
        <link href="{{ asset('plugins/jScrollPane/style/jquery.jscrollpane.css') }}" type="text/css" rel="stylesheet"> <!-- jsTree -->
        <link href="{{ asset('plugins/form-daterangepicker/daterangepicker-bs3.css') }}" type="text/css" rel="stylesheet"> <!-- DateRangePicker -->
        <link href="{{ asset('js/jqueryui.css') }}" type="text/css" rel="stylesheet">
        @stack('css')
        <script>
            var pageInitialized = false;
        </script>
    </head>
    <body class="infobar-offcanvas">
        <header id="topnav" class="navbar navbar-primary navbar-fixed-top clearfix" role="banner">
            <a id="leftmenu-trigger" class="" data-toggle="tooltip" data-placement="right" title="Toggle Sidebar"></a>
            <a class="navbar-brand" href="{{ route('admin.dashboard') }}"></a>
            <ul class="nav navbar-nav toolbar pull-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle username" data-toggle="dropdown">
                        <span class="hidden-xs">Hi</span>
                    </a>
                    <ul class="dropdown-menu userinfo">
                        <li>
                            <a href="#">
                                <span class="pull-left">Sign Out</span> <i class="pull-right fas fa-sign-out-alt"></i>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </header>
        <div id="wrapper">
            <div id="layout-static">
                <div class="static-sidebar-wrapper sidebar-default">
                    <div class="static-sidebar">
                        <div class="sidebar">
                            <div class="widget stay-on-collapse" id="widget-sidebar">
                                <span class="widget-heading">Menu</span>
                                <nav role="navigation" class="widget-body">
                                    <ul class="acc-menu">
                                        @if(auth()->user()->role == 'admin')
                                            <li><a href="{{ route('admin.dashboard') }}"><i class="fa fa-home"></i><span>Dashboard</span></a></li>
                                            <li><a href="{{ route('admin.admin') }}"><i class="fa fa-briefcase"></i><span>Visitor Log</span></a></li>
                                            <li><a href="{{ route('admin.admin') }}"><i class="fas fa-file-alt"></i><span>Events</span></a></li>
                                        @else
                                            <li><a href="{{ route('admin.guard') }}"><i class="fas fa-file-alt"></i><span>Visitor Log</span></a></li>
                                            <li><a href="{{ route('admin.guard') }}"><i class="fas fa-file-alt"></i><span>Events</span></a></li>
                                        @endif
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="static-content-wrapper">
                    <div class="static-content">
                        <div class="page-content">
                            @yield('content')
                        </div> <!-- #page-content -->
                    </div>
                    <footer role="contentinfo">
                        <div class="clearfix">
                            <ul class="list-unstyled list-inline pull-left">
                                <li>
                                    <h6 style="margin: 0;"> &copy; <?php echo date('Y'); ?></h6>
                                </li>
                            </ul>
                            <button class="pull-right btn btn-link btn-xs hidden-print" id="back-to-top">
                                <i class="fa fa-arrow-up"></i>
                            </button>
                        </div>
                    </footer>
                </div>
            </div>
        </div>
        <script src="{{ asset('js/jquery-1.10.2.min.js') }}"></script>
        <script src="{{ asset('js/jqueryui-1.9.2.min.js') }}"></script>
        <script src="{{ asset('js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('plugins/sparklines/jquery.sparklines.min.js') }}"></script>
        <script src="{{ asset('plugins/jstree/dist/jstree.min.js') }}"></script>
        <script src="{{ asset('plugins/codeprettifier/prettify.js') }}"></script>
        <script src="{{ asset('plugins/bootstrap-switch/bootstrap-switch.js') }}"></script>
        <script src="{{ asset('plugins/bootstrap-tabdrop/js/bootstrap-tabdrop.js') }}"></script>
        <script src="{{ asset('js/enquire.min.js') }}"></script>
        <script src="{{ asset('plugins/bootbox/bootbox.js') }}"></script>
        <script src="{{ asset('js/application.js') }}"></script>
        @stack('scripts')
    </body>
</html>
