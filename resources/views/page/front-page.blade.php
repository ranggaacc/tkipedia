@include('layouts.header-public')

  @include('layouts.navbar-home')

  <section class="head-section">
    <div class="head-section-slide head-section-slide-1 text-center">
      <div class="container head-section-slide-container text-center">
        <h1 class="head-section-slide__h1">CARI INFO P2TKI</h1>
        <p class="head-section-slide__p"><span class="head-section-slide__p--strong">Membantu</span> Orang Lain</p>
        <p class="head-section-slide__p">Membantu <span class="head-section-slide__p--strong">Dunia</span></p>
        <!-- <a href="{{ url('/registration') }}" class="btn btn-primary head-section-slide__btn">Daftar Sekarang</a> -->
        <div class="head-section-search clearfix">
          <form action="/searchinformasi" method="GET">
            <input type="text" class="head-section-search__input" placeholder="Ketik apa yang anda ingin cari..." name="q" />
            <button type="submit" class="head-section-search__submit"><i class="fa fa-search" aria-hidden="true"></i></button>
          </form>
        </div>
        <div class="head-section-subtitle">Kategori</div>
        <div class="head-section-category">
         @foreach($informasis as $informasi)
          <div class="head-section-box">
            <div class="head-section-box-overlay"></div>
            <div class="head-section-box-picture">
              @if($informasi['picture'] != null)
                <img src="{{ asset($informasi->picture) }}" alt="informasi" class="head-section-box-picture__img">
              @else
                <img src="{{ asset("/upload/images/profil/noimage.png") }}" alt="informasi" class="head-section-box-picture__img">
              @endif
            </div>
            <div class="head-section-box-text clearfix">
              <p class="head-section-box-text__title">{{$informasi->title}}</p>
              <a href="{{ url('/detailinformasi', $informasi->slug) }}" class="head-section-box-text__btn pull-right">Selengkapnya</a>
            </div>
          </div>
          @endforeach
        </div>
      </div>
      <div class="head-section-next"><i class="fa fa-angle-down" aria-hidden="true"></i></div>
      <div class="head-section-help">
        <div class="head-section-help-icon"><i class="fa fa-commenting-o" aria-hidden="true"></i></div>
        <div class="head-section-help-form">
          <div class="head-section-help-form-header">
            <h3 class="head-section-help-form__h3">Tanya Kami</h3>
            <span class="head-section-help-form__close">&times;</span>
          </div>
          <div class="head-section-help-form-body">
          <form action="{{ url('/tanyastore') }}" enctype="multipart/form-data" method="POST">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <input type="text" class="head-section-help-form__input" placeholder="Nama" name="name"/>
            <input type="email" class="head-section-help-form__input" placeholder="Email" name="email"/>
            <textarea class="head-section-help-form__textarea" rows="2" placeholder="Pesan" name="description"></textarea>
            <p>{!!  captcha_img() !!}</p>
          <div class="@if($errors->has('security-code')) has-error @endif">
          <input type="text" name="security-code" class="form-control box-body__input" placeholder="Security Code">
            @if($errors->has("security-code"))
              <span class="help-block">wrong captcha</span>
            @endif
          </div>
              <input style="margin-top:5px;"  type="submit" class="btn btn-secondary" value="submit"/>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section bg-grey" id="faq">
    <div class="container">
      <div class="row">
        <div class="col-sm-8">
          <p class="faq__p">Bingung mencari apa yang harus dicari?</p>
          <p class="faq__p">Temukan pertanyaan yang paling sering diajukan!</p>
        </div>
        <div class="col-sm-4 text-center">
          <a href="/faqs" class="btn btn-primary faq__btn">Frequently Asked Questions</a>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="artikel">
    <h2 class="section__h2 section__h2--card">Artikel</h2>
    <div class="artikel-container clearfix">
      @foreach($artikelsbig as $p)
        <div class="artikel artikel-big">
        <div class="artikel-overlay"></div>
        <img src="{{ asset($p->picture) }}" alt="artikel 1" class="artikel__img">
        <div class="artikel-text">
          <label class="artikel-text__label">{{date('j F Y', strtotime($p->tanggal))}}</label>
          <p><i class="glyphicon glyphicon-eye-open"></i> {{$p->view}}</p>
          <h2 class="artikel-text__h2">{{$p->title}}</h2>
          <a href="{{ url('/detailartikel', $p->slug) }}" class="btn btn-primary artikel__btn">Selengkapnya</a>
        </div>
      </div>
      @endforeach
    </div>
    <div class="artikel-container clearfix">
      @foreach($artikelssmall as $p)
      <div class="artikel artikel-small">
        <div class="artikel-overlay"></div>
        <img src="{{ asset($p->picture) }}" alt="artikel 1" class="artikel__img">
        <div class="artikel-text">
          <label class="artikel-text__label">{{date('j F Y', strtotime($p->tanggal))}}</label>
          <p><i class="glyphicon glyphicon-eye-open"></i> {{$p->view}}</p>
          <h2 class="artikel-text__h2">{{$p->title}}</h2>
          <a href="{{ url('/detailartikel',$p->slug) }}" class="btn btn-primary artikel__btn">Selengkapnya</a>
        </div>
      </div>
      @endforeach
      <div class="artikel artikel-small">
        <a href="{{ url('/allartikel') }}" class="artikel-more">
          <i class="fa fa-newspaper-o" aria-hidden="true"></i>
          <p class="artikel-text__h2 text-center">Artikel Lainnya</p>
        </a>
      </div>
    </div>
  </section>

  <div class="modal-overlay">
    <span class="modal-overlay-close">&times;</span>
  </div>
  <div class="modal-media modal-media-image">
    <img src="{{ asset('assets/dist/img/photo1.png') }}" alt="" class="img-responsive" />
  </div>
  <div class="modal-media modal-media-video">
    <iframe width="840" height="473" src="" class="modal-media-video__iframe" frameborder="0" allowfullscreen></iframe>
  </div>
  

  @include('layouts.footer-public')
</body>
</html>
