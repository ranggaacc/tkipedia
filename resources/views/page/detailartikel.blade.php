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

  <section class="main-section" id="search">
    <div class="container">
      <div class="search-result">
        <div class="card clearfix">
          <a class="card__title">{{$artikels->title}}</a>
          <i class="glyphicon glyphicon-calendar"></i> {{date('j F Y', strtotime($artikels->tanggal))}}
          <i class="glyphicon glyphicon-eye-open"></i> {{$artikels->view}}
          <p class="card__p">
              @if($artikels['picture'] != null)
                <img src="{{ asset($artikels->picture) }}" alt="" class="box__img img-responsive">
              @else
                <img src="{{ asset("/upload/images/profil/noimage.png") }}" class="box__img img-responsive">
              @endif
            
            {!!$artikels->description!!}
          </p>
          <?php $splitted1 = preg_split('/\//', $artikels->file1); ?>
          <p class="card__p">Link Download 1 <a href="{{asset($artikels->file1) }}" download>{{$splitted1[sizeof($splitted1) - 1]}}</a></p>
          <?php $splitted2 = preg_split('/\//', $artikels->file2); ?>
          <p class="card__p">Link Download 2 <a href="{{asset($artikels->file2) }}" download>{{$splitted2[sizeof($splitted2) - 1]}}</a></p>
        </div>
      </div>
    </div>
  </section>

  @include('layouts.footer-public')
</body>
</html>

