@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<section class="content-header">
<div class="page-header">
        <h1>Artikel / Show #{{$artikel->id}}</h1>
        <form action="{{ route('artikels.destroy', $artikel->id) }}" method="POST" style="display: inline;" onsubmit="if(confirm('Delete? Are you sure?')) { return true } else {return false };">
            <input type="hidden" name="_method" value="DELETE">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="btn-group pull-right" role="group" aria-label="...">
                <a class="btn btn-warning btn-group" role="group" href="{{ route('artikels.edit', $artikel->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
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
                    <p class="form-control-static">{{$artikel->id}}</p>
                </div>
                <div class="form-group">
                     <label for="title">TITLE</label>
                     <p class="form-control-static">{{$artikel->title}}</p>
                </div>
                <div class="form-group">
                     <label for="user">USER</label>
                     <p class="form-control-static">{{$artikel->user}}</p>
                </div>
                <div class="form-group">
                     <label for="user">TANGGAL TERBIT</label>
                     <p class="form-control-static">{{date('j F Y', strtotime($artikel->tanggal))}}</p>
                </div>
                <div class="form-group">
                     <label for="description">DESCRIPTION</label>
                     <p class="form-control-static">{!!$artikel->description!!}</p>
                </div>
                @if($artikel->file1!=null)
                <div class="form-group">
                     <label for="description">FILE 1</label>
                     <?php $splitted1 = preg_split('/\//', $artikel->file1); ?>
                     <p class="form-control-static"><a href="{{asset($artikel->file1) }}" download>{{$splitted1[sizeof($splitted1) - 1]}}</a></p>
                </div>
                @else
                <div class="form-group">
                     <label for="description">FILE 1</label>
                     <p class="form-control-static"><font color="blue">No File</font></p>
                </div>
                @endif
                @if($artikel->file2!=null)
                <div class="form-group">
                     <label for="description">FILE 2</label>
                     <?php $splitted2 = preg_split('/\//', $artikel->file2); ?>
                     <p class="form-control-static"><a href="{{asset($artikel->file2) }}" download>{{$splitted2[sizeof($splitted2) - 1]}}</a></p>
                </div>
                @else
                <div class="form-group">
                     <label for="description">FILE 2</label>
                     <p class="form-control-static"><font color="blue">No File</font></p>
                </div>
                @endif
                    <div class="form-group">
                     <label for="picture">PICTURE</label>
                      @if($artikel['picture'] != null)
                        <img width="100" height="100" src="{{ asset($artikel->picture) }}" class="img-responsive"/>
                      @else
                        <img width="100" height="100" src="{{ asset("/upload/images/profil/noimage.png") }}" class="img-responsive">
                      @endif
                     
                     </div>
            </form>

            <a class="btn btn-link" href="{{ route('artikels.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>

        </div>
    </div>

    </section>
    <!-- /.content -->
  </div>
@include('layouts.footer') 
</body>
</html>