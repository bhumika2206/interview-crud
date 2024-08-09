<div class="page-wrapper compact-wrapper" id="pageWrapper">
    <!-- Page Header Start-->
    <div class="page-header">
        <div class="header-wrapper row m-0">

            <div class="header-logo-wrapper col-auto p-0">
                <div class="logo-wrapper"><a href="{{ route('home') }}"><img class="img-fluid"
                            src="{{ asset('assets/images/logo/logo.png') }}" alt=""></a></div>
                <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle"
                        data-feather="align-center"></i></div>
            </div>
            <div class="left-header col horizontal-wrapper ps-0">
                <ul class="horizontal-menu">

                </ul>
            </div>
            <div class="nav-right col-8 pull-right right-header p-0">
                <ul class="nav-menus">
                    <!-- <li>
                        <div class="mode"><i class="fa fa-moon-o"></i></div>
                    </li> -->
                    <li class="maximize"><a class="text-dark" href="#!"
                            onclick="javascript:toggleFullScreen()"><i data-feather="maximize"></i></a></li>
                    <li class="profile-nav onhover-dropdown p-0 me-0">
                        <div class="media profile-media"><img class="b-r-10"
                                src="{{ asset('assets/images/dashboard/profile.jpg') }}" alt="">
                            <div class="media-body">
                                <span>@auth(){{ Auth::user()->name }}@endauth</span>
                                <p class="mb-0 font-roboto">Admin <i class="middle fa fa-angle-down"></i></p>
                            </div>
                        </div>
                        <ul class="profile-dropdown onhover-show-div">
{{--                            <li><a href="{{ route('change-password') }}"><i data-feather="log-in"> </i><span>Change Password</span></a>--}}
{{--                            </li>--}}
                            <li><a href="{{ route('logout') }}"><i data-feather="log-in"> </i><span>Log Out</span></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div>
    </div>
{{--</div>--}}
