@include('layouts.header-public')

  @include('layouts.navbar-public')

  <section class="head-section head-section--public">
    <div class="head-section-slide head-section-slide-1 text-center">
      <div class="container head-section-slide-container text-center">
        <div class="head-section-search clearfix">
          <input type="text" class="head-section-search__input" placeholder="Ketik apa yang anda ingin cari..."/>
          <button type="submit" class="head-section-search__submit"><i class="fa fa-search" aria-hidden="true"></i></button>
        </div>
      </div>
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

  <section id="tab">
    <div class="container">
      <div class="tab tab--faq">
        <div class="tab-item active"><a href="" class="tab-item__link">Frequently Asked Questions</a></div>
      </div>
    </div>
  </section>

  <section class="main-section" id="faq">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <p class="section-helper">Total pertanyaan: <span class="section-helper__term">{{ $faqs->count() }} Data</span></p>
        </div>
      </div>
      <div class="faq-result">
        @foreach($faqs as $p)
        <div class="card clearfix">
          <a href="{{ url('/detailfaq',$p->slug) }}" class="card__title">{{ $p->title }}</a>
          <p class="card__p">{!! substr($p->description,0,150) !!} ....</p>
          <a href="{{ url('/detailfaq',$p->slug) }}" class="card__link btn btn-ghost-primary">Baca Selengkapnya <i class="fa fa-angle-right" aria-hidden="true"></i></a>
        </div>
        @endforeach
      </div>
      <div class="section-pagination text-center">
        <nav aria-label="Page navigation">
          <ul class="pagination">
            <li>
              <a href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
              </a>
            </li>
            <li><a href="{{url('paginatefaq', [0,5])}}">1</a></li>
            <li><a href="{{url('paginatefaq', [5,5])}}">2</a></li>
            <li><a href="{{url('paginatefaq', [10,5])}}">3</a></li>
            <li><a href="{{url('paginatefaq', [15,5])}}">4</a></li>
            <li><a href="{{url('paginatefaq', [20,5])}}">5</a></li>
            <li>
              <a href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
              </a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </section>

  @include('layouts.footer-public')
</body>
</html>
