@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

<section class="content-header">
  <div class="page-header clearfix">
      <h1>
          <i class="glyphicon glyphicon-align-justify"></i> FAQ
                  <div class="box-tools pull-right">
      @if(Auth::user()->role!="publisher")
      <a class="btn btn-success" href="{{ route('faq.create') }}"><i class="glyphicon glyphicon-plus"></i> Create</a>
      @endif
      </div>

      </h1>

  </div>
</section>
<section class="content">
  @include('error')
  @if(Session::has('message'))
      <p class="alert {{ Session::get('alert-class', 'alert-danger') }}">{{ Session::get('message') }}</p>
  @elseif(Session::has('message2'))
      <p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message2') }}</p>
  @endif
    <div class="row">
        <div class="col-md-12">
        <table class="table table-condensed table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>TITLE</th>
                    <th>USER</th>
                    <th>TANGGAL TERBIT</th>
                    <th>OPTION</th>
                </tr>
            </thead>
        </table>                
        </div>
    </div>

    </section>
  <!-- /.content -->
</div>
@include('layouts.footer') 
<script>
$(function () {
  $(".table").DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ url('/faq-data')}}",
        columns: [
            {data: 'id', name: 'id'},
            {data: 'title', name: 'title'},
            {data: 'user', name: 'user'},
            {data: 'tanggal', name: 'tanggal'},
            {data: 'action', name: 'action'},
        ],
  });
});
</script>
</body>
</html>

