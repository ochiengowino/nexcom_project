@extends('layouts/default')

{{-- Page title --}}
@section('title')
    Nexcom - Internet Services
    @parent
@stop

{{-- page level styles --}}
@section('header_styles')
    <!-- put styling here -->
@stop
@section('content')

    <!-- Start Banner Area -->
    <div class="slider__area slider--2">
        <div class="slide__activation">
            <!-- Start Single Slide -->
            <div class="slide slider_fixed_height gra__bg--1 d-flex align-items-center">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-xl-5 col-md-6 col-sm-6 col-12">
                            <div class="content">
                                <h1 data-shadow='Fastest Way To Share Your Voice.'>Fastest Way To Share Your Voice.</h1>
                                <p>On the other han denounce with righteous indignation and dislike men who are so beguiled.</p>
                                <a class="voopo__btn btn--org" href="#">Learn More</a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-xl-7 col-md-6 col-sm-6 col-12">
                            <div class="slide__fornt__img">
                                <img src="images/banner/s2.png" alt="voopo voip">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Single Slide -->
        </div>
    </div>
    <!-- End Banner Area -->
    <!-- Start Service Area -->
    <div class="voopo__service__video bg--cart-9">
        <!-- Start Service Area -->
        <div class="voopo__service service__position service--2">
            <div class="container">
                <div class="row">
                    <!-- Start Single Service -->
                    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                        <div class="service">
                            <img src="images/icons/s2.png" alt="voopo voip">
                            <h2>
                                <a href="#">First Service</a>
                            </h2>
                            <p>At vero eos accusamus iusto odio dignissims ducimus blanditiis praesentium voluptatum deleniti
                                atque corrupti dolores et quas.</p>
                        </div>
                    </div>
                    <!-- End Single Service -->
                    <!-- Start Single Service -->
                    <div class="col-lg-4 col-md-6 col-sm-6 col-12 xs__mt--40">
                        <div class="service">
                            <img src="images/icons/s1.png" alt="voopo voip">
                            <h2>
                                <a href="#">Cloud SSD</a>
                            </h2>
                            <p>At vero eos accusamus iusto odio dignissims ducimus blanditiis praesentium voluptatum deleniti
                                atque corrupti dolores et quas.</p>
                        </div>
                    </div>
                    <!-- End Single Service -->
                    <!-- Start Single Service -->
                    <div class="col-lg-4 col-md-6 col-sm-6 col-12 md__mt--40 sm__mt--40">
                        <div class="service">
                            <img src="images/icons/s3.png" alt="voopo voip">
                            <h2>
                                <a href="#">Top Rated</a>
                            </h2>
                            <p>At vero eos accusamus iusto odio dignissims ducimus blanditiis praesentium voluptatum deleniti
                                atque corrupti dolores et quas.</p>
                        </div>
                    </div>
                    <!-- End Single Service -->
                </div>
            </div>
        </div>
        <!-- End Service Area -->
        <!-- Start Video Start -->
        <div class="voopo__video">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="video__inner bg-image--2">
                            <div class="row">
                                <div class="col-lg-7 col-xl-5 col-md-7 col-sm-9 col-12">
                                    <div class="video__content">
                                        <h2>What Is Voopo</h2>
                                        <p>On the other hand, denounce with righteous indignation and dislike men who are beguiled
                                            and demor the charms pleasure the moment, so blinded dislike by desire, that
                                            they cannot foresee the pain and trouble that are bound to ensue.</p>
                                        <p>And equal blame duty belongs to those who fail in their duty through weakne will,
                                            which is the same as saying through shrinking from toil and pain. These cases
                                            are perfectly simple and easy to distinguish.</p>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-xl-7 col-md-5 col-sm-3 d-none d-sm-block">
                                    <div class="video__trigger">
                                        <a class="play__btn" href="https://www.youtube.com/watch?v=LOHfKSmWXVM">
                                            <i class="zmdi zmdi-play"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Video Start -->
    </div>
    <!-- End Service Area -->
    <!-- Start Best Service Area -->
    <div class="voopo__best__service bg--white ptb--110  poss--relative area__text">
        <div class="container">
            <div class="row">
                <!-- Start Single Service -->
                <div class="col-lg-4 col-md-5 col-12 col-sm-8">
                    <div class="service__title">
                        <h2>Best Service</h2>
                        <h3>we provide</h3>
                        <p>Nulla consectetur condimentum tellus ut scelerisque.</p>
                        <a class="voopo__btn btn--org" href="#">Learn More</a>
                    </div>
                </div>
                <!-- End Single Service -->
                <!-- Start Single Service -->
                <div class="col-xl-4 col-lg-6 col-md-7 col-12 col-sm-12 sm__mt--40">
                    <div class="best__service">
                        <div class="icon">
                            <i class="zmdi zmdi-cloud-outline"></i>
                        </div>
                        <div class="content">
                            <h2>
                                <a href="#">Cloud Base Solutions</a>
                            </h2>
                            <p>Nullam maximus porta odio a venenatis. Ut finibus quis orci in volutpat. Ut aliquam odio
                                placerat nisl bibendum, vel suscipit leo elementum.</p>
                        </div>
                    </div>
                    <div class="best__service">
                        <div class="icon">
                            <i class="zmdi zmdi-cloud-outline"></i>
                        </div>
                        <div class="content">
                            <h2>
                                <a href="#">Seamless Mobility</a>
                            </h2>
                            <p>Nullam maximus porta odio a venenatis. Ut finibus quis orci in volutpat. Ut aliquam odio
                                placerat nisl bibendum, vel suscipit leo elementum.</p>
                        </div>
                    </div>
                </div>
                <!-- End Single Service -->
                <!-- Start Single Service -->
                <div class="col-xl-4 col-lg-6 col-md-7 col-12 col-sm-12 sm__mt--40">
                    <div class="best__service">
                        <div class="icon">
                            <i class="zmdi zmdi-cloud-outline"></i>
                        </div>
                        <div class="content">
                            <h2>
                                <a href="#">Business Customize</a>
                            </h2>
                            <p>Nullam maximus porta odio a venenatis. Ut finibus quis orci in volutpat. Ut aliquam odio
                                placerat nisl bibendum, vel suscipit leo elementum.</p>
                        </div>
                    </div>
                    <div class="best__service">
                        <div class="icon">
                            <i class="zmdi zmdi-cloud-outline"></i>
                        </div>
                        <div class="content">
                            <h2>
                                <a href="#">Lifetime Support</a>
                            </h2>
                            <p>Nullam maximus porta odio a venenatis. Ut finibus quis orci in volutpat. Ut aliquam odio
                                placerat nisl bibendum, vel suscipit leo elementum.</p>
                        </div>
                    </div>
                </div>
                <!-- End Single Service -->
            </div>
        </div>
    </div>
    <!-- End Best Service Area -->
    <!-- Start Voopo Software -->
    <div class="voopo__software bg-image--3 software__style--2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="content">
                        <h2>Our User Friendly Software</h2>
                        <p>Nor again is there anyone who loves or pursues or desires to
                            obtain pain of itself, because it is pain, but because occasionally circumstances.</p>
                        <ul class="download__btn">
                            <li>
                                <a href="#">Download
                                    <img src="images/icons/down2.png" alt="voip voopo">
                                </a>
                            </li>
                            <li>
                                <a href="#">Download
                                    <img src="images/icons/apple2.png" alt="voip voopo">
                                </a>
                            </li>
                        </ul>
                        <div class="thumb">
                            <img src="images/about/soft2.png" alt="voopo voip">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Voopo Software -->
    <!-- Start Working Process -->
    <div class="voopo__working__process bg--cart-7 poss--relative">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-left">
                        <span>Process</span>
                        <h2>How it work</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5 col-md-6 col-sm-12 col-12">
                    <div class="process__inner">
                        <!-- Start Single Process -->
                        <div class="voopo__process">
                            <div class="count">
                                <span>01</span>
                            </div>
                            <div class="content">
                                <h4>Download Software</h4>
                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
                                    anim id est laborum.</p>
                            </div>
                        </div>
                        <!-- End Single Process -->
                        <!-- Start Single Process -->
                        <div class="voopo__process">
                            <div class="count">
                                <span>02</span>
                            </div>
                            <div class="content">
                                <h4>Login Wth Valid ID</h4>
                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
                                    anim id est laborum.</p>
                            </div>
                        </div>
                        <!-- End Single Process -->
                        <!-- Start Single Process -->
                        <div class="voopo__process">
                            <div class="count">
                                <span>03</span>
                            </div>
                            <div class="content">
                                <h4>Eanr Voopo Credit</h4>
                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
                                    anim id est laborum.</p>
                            </div>
                        </div>
                        <!-- End Single Process -->
                        <!-- Start Single Process -->
                        <div class="voopo__process">
                            <div class="count">
                                <span>04</span>
                            </div>
                            <div class="content">
                                <h4>Start Calling</h4>
                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
                                    anim id est laborum.</p>
                            </div>
                        </div>
                        <!-- End Single Process -->
                    </div>
                </div>
            </div>
        </div>
        <div class="thumb__poss">
            <img src="images/about/shape.png" alt="voip voopo">
        </div>
    </div>
    <!-- End Working Process -->
    <!-- Start Pricing Table Area -->
    <div class="voopo__picing__area pb--120 pt--110">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center">
                        <span>Package</span>
                        <h2>Pick a Pricing Plan</h2>
                    </div>
                </div>
            </div>
            <div class="row mt--30">
                <!-- Start Single Pricing -->
                <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                    <div class="pricing">
                        <div class="content">
                            <span>Basic</span>
                            <div class="price">
                                <p>
                                    <sup>$</sup> 29.11
                                    <sub>/month</sub>
                                </p>
                            </div>
                            <ul>
                                <li>700 Minute Calls</li>
                                <li>2 IP Dedicated</li>
                                <li>10 Phone Number</li>
                                <li>Personal Server</li>
                                <li>15 Countries</li>
                            </ul>
                            <div class="price__btn">
                                <a class="voopo__btn btn--light" href="#">Order Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single Pricing -->
                <!-- Start Single Pricing -->
                <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                    <div class="pricing active">
                        <div class="content">
                            <span>Standered</span>
                            <div class="price">
                                <p>
                                    <sup>$</sup> 29.11
                                    <sub>/month</sub>
                                </p>
                            </div>
                            <ul>
                                <li>Unlimited Calls</li>
                                <li>10 IP Dedicated</li>
                                <li>Unlimited Phone Number</li>
                                <li>Business Server</li>
                                <li>160 Countries</li>
                            </ul>
                            <div class="price__btn">
                                <a class="voopo__btn btn--org" href="#">Order Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single Pricing -->
                <!-- Start Single Pricing -->
                <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                    <div class="pricing">
                        <div class="content">
                            <span>Enterprise</span>
                            <div class="price">
                                <p>
                                    <sup>$</sup> 29.11
                                    <sub>/month</sub>
                                </p>
                            </div>
                            <ul>
                                <li>Unlimited Calls</li>
                                <li>Unlimited IP Dedicated</li>
                                <li>Unlimited Phone Number</li>
                                <li>Business Server</li>
                                <li>Any Countries</li>
                            </ul>
                            <div class="price__btn">
                                <a class="voopo__btn btn--light" href="#">Order Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single Pricing -->
            </div>
        </div>
    </div>
    <!-- End Pricing Table Area -->
    <!-- Start Faq Area -->
    <div class="voopo__faq__area pb--120 bg--white">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                    <div id="accordion" class="panora_accordion" role="tablist">
                        <div class="card">
                            <div class="acc-header" role="tab" id="headingOne">
                                <h5>
                                    <a data-toggle="collapse" href="#collapseOne" role="button" aria-expanded="true" aria-controls="collapseOne">How often should I change my oil filter? </a>
                                </h5>
                            </div>

                            <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="card-body">There are many variations of passages Ipsum available, but the majority words which suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="acc-header" role="tab" id="headingTwo">
                                <h5>
                                    <a class="collapsed" data-toggle="collapse" href="#collapseTwo" role="button" aria-expanded="false" aria-controls="collapseTwo">
                                        How often should I change my oil filter?</a>
                                </h5>
                            </div>
                            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                <div class="card-body">There are many variations of passages Ipsum available, but the majority words which suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="acc-header" role="tab" id="headingThree">
                                <h5>
                                    <a class="collapsed" data-toggle="collapse" href="#collapseThree" role="button" aria-expanded="false" aria-controls="collapseThree">How often should I change my oil filter?</a>
                                </h5>
                            </div>
                            <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body">There are many variations of passages Ipsum available, but the majority words which suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="acc-header" role="tab" id="four">
                                <h5>
                                    <a class="collapsed" data-toggle="collapse" href="#collapseFour" role="button" aria-expanded="false" aria-controls="collapseFour">
                                        How often should I change my oil filter?</a>
                                </h5>
                            </div>
                            <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="four" data-parent="#accordion">
                                <div class="card-body">There are many variations of passages Ipsum available, but the majority words which suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 col-12 sm__mt--40 md__mt--40 xs__mt--40">
                    <div class="faq_inner">
                        <div class="content">
                            <h2>Have Any Other Questions?</h2>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered
                                alteration.</p>
                            <div class="input__box">
                                <input type="email" placeholder="Enter your email address">
                                <textarea placeholder="Type your Question."></textarea>
                                <div class="qus__btn">
                                    <a class="voopo__btn" href="#">Send</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Faq Area -->
@stop

{{-- page level scripts --}}
@section('footer_scripts')
    <!-- put scripts gera -->
@stop
