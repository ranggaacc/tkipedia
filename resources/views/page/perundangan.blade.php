@include('layouts.header-public')

  @include('layouts.navbar-public')

  @include('layouts.head-section')

  <section id="tab">
    <div class="container">
      <div class="tab">
        <div class="tab-item"><a href="/searchinformasi" class="tab-item__link">Hasil Pencarian</a></div>
        <div class="tab-item"><a href="/link" class="tab-item__link">Link Terkait</a></div>
        <div class="tab-item active"><a href="#" class="tab-item__link">Perundangan</a></div>
      </div>
    </div>
  </section>

  <section class="main-section" id="perundangan">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-6 col-sm-4 col-md-2">
          <a target="_blank" href={{$perundangan[0]->link}}" class="box box-perundangan">
            <div class="box__img box-perundangan__img box-perundangan__img--uu"></div>
            <p class="box__p box-perundangan-title">UU</p>
          </a>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          <a target="_blank" href={{$perundangan[1]->link}}" class="box box-perundangan">
            <div class="box__img box-perundangan__img box-perundangan__img--perpu"></div>
            <p class="box__p box-perundangan-title">PERPU</p>
          </a>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          <a target="_blank" href={{$perundangan[2]->link}}" class="box box-perundangan">
            <div class="box__img box-perundangan__img box-perundangan__img--pp"></div>
            <p class="box__p box-perundangan-title">PP</p>
          </a>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          <a target="_blank" href={{$perundangan[3]->link}}" class="box box-perundangan">
            <div class="box__img box-perundangan__img box-perundangan__img--perpres"></div>
            <p class="box__p box-perundangan-title">PERPRES</p>
          </a>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          <a target="_blank" href={{$perundangan[4]->link}}" class="box box-perundangan">
            <div class="box__img box-perundangan__img box-perundangan__img--kepres"></div>
            <p class="box__p box-perundangan-title">KEPRES</p>
          </a>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          <a target="_blank" href={{$perundangan[5]->link}}" class="box box-perundangan">
            <div class="box__img box-perundangan__img box-perundangan__img--inpres"></div>
            <p class="box__p box-perundangan-title">INPRES</p>
          </a>
        </div>
      </div>
    </div>
  </section>

  @include('layouts.footer-public')
</body>
</html>
