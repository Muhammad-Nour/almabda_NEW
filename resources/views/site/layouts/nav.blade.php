<!-- Page Header-->
<header class="section page-header">
  <!-- RD Navbar-->
  <div class="rd-navbar-wrap">
    <nav class="rd-navbar rd-navbar-classic rd-navbar-classic-2" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px" data-xxl-stick-up-offset="46px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
      <div class="rd-navbar-main-outer">
        <div class="rd-navbar-main">
          <!-- RD Navbar Panel-->
          <div class="rd-navbar-panel">
            <!-- RD Navbar Toggle-->
            <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
            <!-- RD Navbar Brand-->
            <div class="rd-navbar-brand"><a class="brand" href="../index-2.html"><img src="images/logo-default-interior-190x43.png" alt="" width="190" height="43"/></a></div>
          </div>
          <div class="container">
            <div class="row">

              <div class="col-md-4 rd-navbar-main-element">
                <ul class="rd-nav-item">
                  @if (Route::has('login'))
                  @auth
                  <li style="display: inline-block;"><img style="width:4rem;height:4rem;border-radius: 50%;" class="h-10 w-10 rounded-full object-cover" src="{{ Auth::user()->profile_photo_url }}" alt="{{ Auth::user()->name }}" /></li>
                  <li class="rd-nav-item">
                    <a class="rd-nav-link" href="{{ route('profile.show') }}" :active="request()->routeIs('profile.show')">
                      {{ Auth::user()->name }}
                    </a>
                  </li>

                <li class="rd-nav-item">
                  <form method="POST" action="{{ route('logout') }}">
                      @csrf
                      <a class="rd-nav-link" href="{{ route('logout') }}"@click.prevent="$root.submit();">
                      {{ __('Log Out') }}
                      </a>
                  </form>
                </li>
                @else
                <a href="{{ route('login') }}" class="rd-nav-link">تسجيل الدخول</a>
                |
                @if (Route::has('register'))
                <a href="{{ route('register') }}" class="rd-nav-link">الإشتراك</a>
                @endif
                @endif
                @endif
              </ul>
            </div>

            <div class="rd-navbar-main-element col-md-8">
              <div class="rd-navbar-nav-wrap">

                <!-- RD Navbar Search-->
                <div class="rd-navbar-search">
                  <button class="rd-navbar-search-toggle" data-rd-navbar-toggle=".rd-navbar-search"><span></span></button>
                  <form class="rd-search" action="../../../external.html?link=https://livedemo00.template-help.com/wt_prod-8852/theme/search-results.html" data-search-live="rd-search-results-live" method="GET">
                    <div class="form-wrap">
                      <label class="form-label" for="rd-navbar-search-form-input">{{ __('front.search_in_almabda') }}</label>
                      <input class="rd-navbar-search-form-input form-input" id="rd-navbar-search-form-input" type="text" name="s" autocomplete="off"/>
                      <div class="rd-search-results-live" id="rd-search-results-live"></div>
                    </div>
                    <button class="rd-search-form-submit fl-bigmug-line-search74" type="submit"></button>
                  </form>
                </div>
                <!-- RD Navbar Basket-->
                <div class="rd-navbar-basket-wrap">
                  <button class="rd-navbar-basket fl-bigmug-line-shopping198" data-rd-navbar-toggle=".cart-inline"><span>2</span></button>
                  <div class="cart-inline">
                    <div class="cart-inline-header">
                      <h5 class="cart-inline-title">In cart:<span> 2</span> Products</h5>
                      <h6 class="cart-inline-title">Total price:<span> $800</span></h6>
                    </div>
                    <div class="cart-inline-body">
                      <div class="cart-inline-item">
                        <div class="unit align-items-center">
                          <div class="unit-left"><a class="cart-inline-figure" href="single-product.html"><img src="images/product-mini-9-100x100.png" alt="" width="100" height="100"/></a></div>
                          <div class="unit-body">
                            <h6 class="cart-inline-name"><a href="single-product.html">CB2 Coup Grey Office Chair</a></h6>
                            <div>
                              <div class="group-xs group-middle-1">
                                <div class="table-cart-stepper">
                                  <input class="form-input" type="number" data-zeros="true" value="1" min="1" max="1000"/>
                                </div>
                                <h6 class="cart-inline-title">$550</h6>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="cart-inline-item">
                        <div class="unit align-items-center">
                          <div class="unit-left"><a class="cart-inline-figure" href="single-product.html"><img src="images/product-mini-10-100x100.png" alt="" width="100" height="100"/></a></div>
                          <div class="unit-body">
                            <h6 class="cart-inline-name"><a href="single-product.html">Ikea Tertial Work lamp</a></h6>
                            <div>
                              <div class="group-xs group-middle-1">
                                <div class="table-cart-stepper">
                                  <input class="form-input" type="number" data-zeros="true" value="1" min="1" max="1000"/>
                                </div>
                                <h6 class="cart-inline-title">$250</h6>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="cart-inline-footer">
                      <div class="group-sm"><a class="button button-md button-default-outline-2 button-wapasha" href="cart-page.html">Go to cart</a><a class="button button-md button-primary button-pipaluk" href="checkout.html">Checkout</a></div>
                    </div>
                  </div>
                </div>
                
                <ul class="rd-navbar-nav">
                  <li class="rd-nav-item"><a class="rd-nav-link" href="{{ route('home') }}">{{ __('front.home') }}</a>
                  </li>
                  <li class="rd-nav-item"><a class="rd-nav-link" href="about-us.html">{{ __('front.aboutus') }} </a>
                  </li>
                  <li class="rd-nav-item"><a class="rd-nav-link" href="grid-gallery.html">{{ __('front.products') }}</a>
                  </li>
                  <li class="rd-nav-item"><a class="rd-nav-link" href="classic-blog.html">{{ __('front.projects') }}</a>
                  </li>
                  <li class="rd-nav-item"><a class="rd-nav-link" href="shop.html">{{ __('front.contactus') }}</a>
                  </li>
                </ul>
              </div>
              <div class="rd-navbar-project-hamburger" data-rd-navbar-toggle=".rd-navbar-main">
                <div class="project-hamburger"><span class="project-hamburger-arrow-top"></span><span class="project-hamburger-arrow-center"></span><span class="project-hamburger-arrow-bottom"></span></div>
                <div class="project-close"><span></span><span></span></div>
              </div>
            </div>


          </div>
        </div>

        {{-- side bar --}}
        @include('site.layouts.sidebar')

      </div>
    </div>
  </nav>
</div>
</header>