@include('layouts.header-public')

  @include('layouts.navbar-public')

  @include('layouts.head-section')

  <section id="tab">
    <div class="container">
      <div class="tab tab--detail">
        <div class="tab-item"><a href="{{ url('/search') }}" class="tab-item__link"><i class="fa fa-angle-left" aria-hidden="true"></i> Kembali ke Hasil Pencarian</a></div>
      </div>
    </div>
  </section>

  <section class="main-section" id="search">
    <div class="container">
      <div class="search-result">
        <div class="card clearfix">
          <a class="card__title">Gaji TKI</a>
          <p class="card__p">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro nulla voluptas 
            recusandae consequuntur quidem, qui eum, quisquam dignissimos magni sapiente iste, esse 
            aspernatur omnis amet aliquid ea cum illum mollitia! Lorem ipsum dolor sit amet consectetur adipisicing elit. 
            Porro nulla voluptas recusandae consequuntur quidem, qui eum, quisquam dignissimos magni sapiente iste, esse 
            aspernatur omnis amet aliquid ea cum illum mollitia!. 
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro nulla voluptas 
            recusandae consequuntur quidem, qui eum, quisquam dignissimos magni sapiente iste, esse 
            aspernatur omnis amet aliquid ea cum illum mollitia! Lorem ipsum dolor sit amet consectetur adipisicing elit. 
            Porro nulla voluptas recusandae consequuntur quidem, qui eum, quisquam dignissimos magni sapiente iste, esse 
            aspernatur omnis amet aliquid ea cum illum mollitia!
          </p>
          <p class="card__p"><a href="#">Berapakah standar gaji untuk tahun 2013 bagi para TKI yang bekerja di luar negeri,
            mohon rinciannya untuk semua negara.</a></p>
        </div>
      </div>
    </div>
  </section>

  @include('layouts.footer-public')
</body>
</html>
