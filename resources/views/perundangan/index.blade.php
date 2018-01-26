@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

<section class="content-header">
  <div class="page-header clearfix">
      <h1>
          <i class="glyphicon glyphicon-align-justify"></i> Perundangan
                  <div class="box-tools pull-right">
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
            @if($perundangans->count())
                <table class="table table-condensed table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>KATEGORI</th>
                            <th>LINK</th>
                            <th class="text-right">OPTIONS</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach($perundangans as $perundangan)
                            <tr>
                                <td>{{$perundangan->id}}</td>
                                <td>{{$perundangan->kategori}}</td>
                                <td>{{$perundangan->link}}</td>
                                <td class="text-right">
                                    <a class="btn btn-xs btn-warning" href="{{ route('perundangans.edit', $perundangan->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @else
                <h3 class="text-center alert alert-info">Empty!</h3>
            @endif

        </div>
    </div>

    </section>
  <!-- /.content -->
</div>
@include('layouts.footer') 
<script>
$(function () {
  $(".table").DataTable();
});
</script>
</body>
</html>

