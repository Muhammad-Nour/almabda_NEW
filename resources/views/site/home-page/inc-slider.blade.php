
  <!-- Swiper-->
  <section class="section swiper-container swiper-slider swiper-slider-classic swiper-slider-classic-2" data-loop="true" data-autoplay="5000" data-simulate-touch="true" data-direction="vertical" data-nav="false">
    <div class="swiper-wrapper text-center">

      @foreach ($sliders as $slider)
      <div class="swiper-slide swiper-slide-1 context-dark text-left" data-slide-bg="{{ asset('gallery/sliders/'. $slider->photo) }}">
      </div>
      @endforeach

    </div>
    <!-- Swiper Pagination-->
    <div class="swiper-pagination__module">
      <div class="swiper-pagination__fraction"><span class="swiper-pagination__fraction-index">00</span><span class="swiper-pagination__fraction-divider">/</span><span class="swiper-pagination__fraction-count">00</span></div>
      <div class="swiper-pagination__divider"></div>
      <div class="swiper-pagination"></div>
    </div>
  </section>
