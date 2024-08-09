<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Cuba admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Cuba admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <meta name="csrf-token" content="{{ csrf_token() }}">

{{--    <link rel="icon" href="{{ asset('assets/images/favicon.png') }}" type="image/x-icon">--}}
{{--    <link rel="shortcut icon" href="{{ asset('assets/images/favicon.png') }}" type="image/x-icon">--}}
    <title></title>
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Rubik:400,400i,500,500i,700,700i&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900&amp;display=swap" rel="stylesheet">

    <link rel="icon" href="{{ asset('assets/images/favicon.png')}}" type="image/x-icon">
    <link rel="shortcut icon" href="{{ asset('assets/images/favicon.png')}}" type="image/x-icon">
    <title>@yield('title')</title>

    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/font-awesome.css')}}">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/icofont.css')}}">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/themify.css')}}">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/flag-icon.css')}}">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/feather-icon.css')}}">
    <!-- Plugins css start-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/scrollbar.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/animate.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/chartist.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/date-picker.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/datatables.css')}}">
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/bootstrap.css')}}">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/style.css')}}">
    <link id="color" rel="stylesheet" href="{{ asset('assets/css/color-1.css')}}" media="screen">

    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/select2.css')}}">

    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/responsive.css')}}">
{{--    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/custom.css')}}">--}}
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/sweetalert/sweetalert.css')}}">
    {{-- <script src="https://cdn.ckeditor.com/ckeditor5/23.0.0/classic/ckeditor.js"></script> --}}


    @vite(['resources/sass/app.scss', 'resources/js/app.js'])

    {{-- <script src="{{ mix('js/app.js') }}" defer></script> --}}

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>+

    <style>
        .page-header {
            padding-bottom: 9px;
            /* margin: 0px 0 20px !important; */
            margin-top: 0px !important;
            border-bottom: 1px solid #eee;
        }
    </style>
</head>
<body onload="startTime()">         
<!-- loader starts-->
<div class="loader-wrapper">
    <div class="loader-index"><span></span></div>
    <svg>
        <defs></defs>
        <filter id="goo">
            <fegaussianblur in="SourceGraphic" stddeviation="11" result="blur"></fegaussianblur>
            <fecolormatrix in="blur" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="goo"> </fecolormatrix>
        </filter>
    </svg>
</div>
<!-- loader ends-->
<!-- tap on top starts-->
<div class="tap-top"><i data-feather="chevrons-up"></i></div>
<!-- tap on tap ends-->
<!-- page-wrapper Start-->
@include('admin.layouts.nav')
<!-- Page Header Ends                              -->
<!-- Page Body Start-->
<div class="page-body-wrapper">
    <!-- Page Sidebar Start-->
@include('admin.layouts.sidebar')
<!-- Page Sidebar Ends-->
<div class="page-content">
    <div class="container-fluid">
        <div class="page-body pt-5">
            @yield('content')
        </div>
    </div>
</div>
<!-- footer start-->
    @include('admin.layouts.footer')
</div>
</div>

<!-- latest jquery-->
<script src="{{ asset('assets/js/jquery-3.5.1.min.js')}}"></script>
<!-- Bootstrap js-->
<script src="{{ asset('assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>
<!-- feather icon js-->
<script src="{{ asset('assets/js/icons/feather-icon/feather.min.js')}}"></script>
<script src="{{ asset('assets/js/icons/feather-icon/feather-icon.js')}}"></script>
<!-- scrollbar js-->
<script src="{{ asset('assets/js/scrollbar/simplebar.js')}}"></script>
<script src="{{ asset('assets/js/scrollbar/custom.js')}}"></script>
<!-- Sidebar jquery-->
<script src="{{ asset('assets/js/config.js')}}"></script>
<!-- Plugins JS start-->
<script src="{{ asset('assets/js/sidebar-menu.js')}}"></script>
<script src="{{ asset('assets/js/form-wizard/form-wizard-three.js') }}"></script>
<script src="{{ asset('assets/js/form-wizard/jquery.backstretch.min.js') }}"></script>
<script src="{{ asset('assets/js/tooltip-init.js') }}"></script>
<script src="{{ asset('assets/js/chart/chartist/chartist.js')}}"></script>
<script src="{{ asset('assets/js/chart/chartist/chartist-plugin-tooltip.js')}}"></script>
<script src="{{ asset('assets/js/chart/knob/knob.min.js')}}"></script>
<script src="{{ asset('assets/js/chart/knob/knob-chart.js')}}"></script>
<script src="{{ asset('assets/js/chart/apex-chart/apex-chart.js')}}"></script>
<script src="{{ asset('assets/js/chart/apex-chart/stock-prices.js')}}"></script>
{{--<script src="{{ asset('assets/js/notify/bootstrap-notify.min.js')}}"></script>--}}
<script src="{{ asset('assets/js/dashboard/default.js')}}"></script>
<script src="{{ asset('assets/js/notify/index.js')}}"></script>
<script src="{{ asset('assets/js/datepicker/date-picker/datepicker.js')}}"></script>
<script src="{{ asset('assets/js/datepicker/date-picker/datepicker.en.js')}}"></script>
<script src="{{ asset('assets/js/datepicker/date-picker/datepicker.custom.js')}}"></script>
<script src="{{ asset('assets/js/typeahead/handlebars.js')}}"></script>
<script src="{{ asset('assets/js/typeahead/typeahead.bundle.js')}}"></script>
<script src="{{ asset('assets/js/typeahead/typeahead.custom.js')}}"></script>
<script src="{{ asset('assets/js/typeahead/handlebars.js')}}"></script>
<script src="{{ asset('assets/js/typeahead/typeahead.bundle.js')}}"></script>
<script src="{{ asset('assets/js/typeahead/typeahead.custom.js')}}"></script>
<script src="{{ asset('assets/js/typeahead-search/handlebars.js')}}"></script>
<script src="{{ asset('assets/js/typeahead-search/typeahead-custom.js')}}"></script>
<script src="{{ asset('assets/js/datatable/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{ asset('assets/js/datatable/datatables/datatable.custom.js')}}"></script>
<script src="{{ asset('assets/js/select2/select2.full.min.js')}}"></script>
<script src="{{ asset('assets/js/select2/select2-custom.js')}}"></script>
<!-- sweetalert js-->
<script src="{{ asset('assets/sweetalert/sweetalert.min.js')}}"></script>


<!-- Plugins JS Ends-->
<!-- Theme js-->
<script src="{{ asset('assets/js/script.js')}}"></script>

<!-- login js-->
<!-- Plugin used-->
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>
@yield('page-script')
</body>
</html>
