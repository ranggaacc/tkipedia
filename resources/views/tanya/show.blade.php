@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<section class="content-header">
<div class="page-header">
        <h1>Pertanyaan / Show #{{$tanya->id}}</h1>
        <form action="{{ route('tanya.destroy', $tanya->id) }}" method="POST" style="display: inline;" onsubmit="if(confirm('Delete? Are you sure?')) { return true } else {return false };">
            <input type="hidden" name="_method" value="DELETE">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="btn-group pull-right" role="group" aria-label="...">
                <button type="submit" class="btn btn-danger">Delete <i class="glyphicon glyphicon-trash"></i></button>
            </div>
        </form>
    </div>
    </section>
    
    <section class="content">
        <div class="row">
        <div class="col-md-12">

            <form action="#">
                <div class="form-group">
                    <label for="nome">ID</label>
                    <p class="form-control-static">{{$tanya->id}}</p>
                </div>
                <div class="form-group">
                     <label for="title">NAMA</label>
                     <p class="form-control-static">{{$tanya->name}}</p>
                </div>
                <div class="form-group">
                     <label for="title">EMAIL</label>
                     <p class="form-control-static">{{$tanya->email}}</p>
                </div>
                <div class="form-group">
                     <label for="user">PESAN</label>
                     <p class="form-control-static">{{$tanya->description}}</p>
                </div>
                <div class="form-group">
                     <label for="description">CREATED_AT</label>
                     <p class="form-control-static">{{$tanya->created_at}}</p>
                </div>
            </form>
            <a class="btn btn-link" href="{{ route('tanya.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>

        </div>
    </div>

    </section>
    <!-- /.content -->
  </div>
@include('layouts.footer') 
</body>
</html>