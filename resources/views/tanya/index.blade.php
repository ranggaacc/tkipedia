@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

<section class="content-header">
  <div class="page-header clearfix">
      <h1>
          <i class="glyphicon glyphicon-align-justify"></i> Pertanyaan
                  <div class="box-tools pull-right">{{-- 
      <a class="btn btn-success" href="{{ route('tanya.create') }}"><i class="glyphicon glyphicon-plus"></i> Create</a> --}}
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
            @if($tanyas->count())
                <table class="table table-condensed table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
                            <th>EMAIL</th>
                            <th>PESAN</th>
                            <th>TANGGAL</th>
                            <th class="text-right">OPTIONS</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach($tanyas as $tanya)
                            <tr>
                                <td>{{$tanya->id}}</td>
                                <td>{{$tanya->name}}</td>
                                <td>{{$tanya->email}}</td>
                                <td>{{ substr($tanya->description,0,10)}} ...</td>                  
                                <td>{{$tanya->created_at}}</td>                  
                                <td class="text-right">
                                    <a class="btn btn-xs btn-primary" href="{{ route('tanya.show', $tanya->id) }}"><i class="glyphicon glyphicon-eye-open"></i> View</a>
                                    <form action="{{ route('tanya.destroy', $tanya->id) }}" method="POST" style="display: inline;" onsubmit="if(confirm('Delete? Are you sure?')) { return true } else {return false };">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                        <button type="submit" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                {!! $tanyas->render() !!}
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

