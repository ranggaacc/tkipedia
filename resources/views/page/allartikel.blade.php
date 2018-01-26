@include('layouts.header-public')

  @include('layouts.navbar-public')

  @include('layouts.head-section')

  <section id="tab">
    <div class="container">
      <div class="tab">
        <div class="tab-item active"><a href="#" class="tab-item__link">Hasil Pencarian</a></div>
        <div class="tab-item"><a href="/link" class="tab-item__link">Link Terkait</a></div>
        <div class="tab-item"><a href="/perundangan" class="tab-item__link">Perundangan</a></div>
      </div>
    </div>
  </section>

  <section class="main-section" id="search">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
        </div>
      </div>
      <div class="search-result">
      @foreach($artikels as $artikel)
        <div class="card clearfix">
          <a href="{{ url('/detailartikel',$artikel->slug) }}" class="card__title">{{$artikel->title}}</a>
          <i class="glyphicon glyphicon-calendar"></i> {{date('j F Y', strtotime($artikel->tanggal))}}
          <i class="glyphicon glyphicon-eye-open"></i> {{$artikel->view}}
          <p class="card__p" >{!!substr($artikel->description,0,150)!!}....</p>
          <a href="{{ url('/detailartikel',$artikel->slug) }}" class="card__link btn btn-ghost-primary">Baca Selengkapnya <i class="fa fa-angle-right" aria-hidden="true"></i></a>
        </div>
        @endforeach
        <center>{{ $artikels->links() }}</center>
      </div>
    </div>
  </section>

  @include('layouts.footer-public')
</body>
</html>
