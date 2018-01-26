@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<section class="content-header">
<div class="page-header">
        <h1>Informasi / Show #{{$informasi->id}}</h1>
        <form action="{{ route('informasis.destroy', $informasi->id) }}" method="POST" style="display: inline;" onsubmit="if(confirm('Delete? Are you sure?')) { return true } else {return false };">
            <input type="hidden" name="_method" value="DELETE">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="btn-group pull-right" role="group" aria-label="...">
                <a class="btn btn-warning btn-group" role="group" href="{{ route('informasis.edit', $informasi->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
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
                    <p class="form-control-static">{{$informasi->id}}</p>
                </div>
                <div class="form-group">
                     <label for="title">TITLE</label>
                     <p class="form-control-static">{{$informasi->title}}</p>
                </div>
                <div class="form-group">
                     <label for="title">KATEGORI</label>
                     <p class="form-control-static">{{$informasi->kategori}}</p>
                </div>
                <div class="form-group">
                     <label for="user">USER</label>
                     <p class="form-control-static">{{$informasi->user}}</p>
                </div>
                <div class="form-group">
                     <label for="description">DESCRIPTION</label>
                     <p class="form-control-static">{!!$informasi->description!!}</p>
                </div>
                <div class="form-group">
                     <label for="description">CREATED_AT</label>
                     <p class="form-control-static">{{$informasi->created_at}}</p>
                </div>
                @if($informasi->file1!=null)
                <div class="form-group">
                     <label for="description">FILE 1</label>
                     <?php $splitted1 = preg_split('/\//', $informasi->file1); ?>
                     <p class="form-control-static"><a href="{{asset($informasi->file1) }}" download>{{$splitted1[sizeof($splitted1) - 1]}}</a></p>
                </div>
                @else
                <div class="form-group">
                     <label for="description">FILE 1</label>
                     <p class="form-control-static"><font color="blue">No File</font></p>
                </div>
                @endif
                @if($informasi->file2!=null)
                <div class="form-group">
                     <label for="description">FILE 2</label>
                     <?php $splitted2 = preg_split('/\//', $informasi->file2); ?>
                     <p class="form-control-static"><a href="{{asset($informasi->file2) }}" download>{{$splitted2[sizeof($splitted2) - 1]}}</a></p>
                </div>
                @else
                <div class="form-group">
                     <label for="description">FILE 2</label>
                     <p class="form-control-static"><font color="blue">No File</font></p>
                </div>
                @endif
                    <div class="form-group">
                     <label for="picture">PICTURE</label>
                      @if($informasi['picture'] != null)
                        <img width="100" height="100" src="{{ asset($informasi->picture) }}" class="img-responsive"/>
                      @else
                        <img width="100" height="100" src="{{ asset("/upload/images/profil/noimage.png") }}" class="img-responsive">
                      @endif
                     </div>
            </form>

            <a class="btn btn-link" href="{{ route('informasis.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>

        </div>
    </div>

    </section>
    <!-- /.content -->
  </div>
@include('layouts.footer') 
</body>
</html>