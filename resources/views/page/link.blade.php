@include('layouts.header-public')

  @include('layouts.navbar-public')

  @include('layouts.head-section')

  <section id="tab">
    <div class="container">
      <div class="tab">
        <div class="tab-item"><a href="/searchinformasi" class="tab-item__link">Hasil Pencarian</a></div>
        <div class="tab-item active"><a href="#" class="tab-item__link">Link Terkait</a></div>
        <div class="tab-item"><a href="/perundangan" class="tab-item__link">Perundangan</a></div>
      </div>
    </div>
  </section>

  <section class="main-section" id="link">
    <div class="container">
      <div class="row">
        <div class="col-xs-6 col-sm-4 col-md-2 col-md-offset-1">
          <a href="http://www.bnp2tki.go.id/" class="box box-link">
            <div class="box__img box-link__img box-link__img--bnp2tki"></div>
            <p class="box__p box-link-title">BNP2TKI</p>
          </a>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2 ">
          <a href="http://www.bnsp.go.id/" class="box box-link">
            <div class="box__img box-link__img box-link__img--bnsp"></div>
            <p class="box__p box-link-title">BNSP</p>
          </a>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2 ">
          <a href="https://www.kemenkumham.go.id/" class="box box-link">
            <div class="box__img box-link__img box-link__img--kemenkumham"></div>
            <p class="box__p box-link-title">KEMENKUMHAM</p>
          </a>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2 ">
          <a href="http://www.imigrasi.go.id/" class="box box-link">
            <div class="box__img box-link__img box-link__img--deplu"></div>
            <p class="box__p box-link-title">IMIGRASI</p>
          </a>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2 ">
          <a href="http://naker.go.id/" class="box box-link">
            <div class="box__img box-link__img box-link__img--depnaker"></div>
            <p class="box__p box-link-title">KEMNAKER</p>
          </a>
        </div>
      </div>
    </div>
  </section>

  @include('layouts.footer-public')
</body>
</html>
