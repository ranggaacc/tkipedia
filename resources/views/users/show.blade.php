@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<section class="content-header">
<div class="page-header">
        <h1>user / Show #{{$user->id}}</h1>
        <form action="{{ route('user.destroy', $user->id) }}" method="POST" style="display: inline;" onsubmit="if(confirm('Delete? Are you sure?')) { return true } else {return false };">
            <input type="hidden" name="_method" value="DELETE">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="btn-group pull-right" role="group" aria-label="...">
                <a class="btn btn-warning btn-group" role="group" href="{{ route('user.edit', $user->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
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
                    <p class="form-control-static">{{$user->id}}</p>
                </div>
                <div class="form-group">
                     <label for="title">NAME</label>
                     <p class="form-control-static">{{$user->nama}}</p>
                </div>
                <div class="form-group">
                     <label for="title">EMAIL</label>
                     <p class="form-control-static">{{$user->email}}</p>
                </div>
                <div class="form-group">
                     <label for="title">NOMOR KONTAK</label>
                     <p class="form-control-static">{{$user->kontak}}</p>
                </div>
                <div class="form-group">
                     <label for="user">ROLE</label>
                     <p class="form-control-static">{{$user->role}}</p>
                </div>
                <div class="form-group">
                     <label for="description">ALAMAT</label>
                     <p class="form-control-static">{!!$user->alamat!!}</p>
                </div>
                <div class="form-group">
                     <label for="description">CREATED_AT</label>
                     <p class="form-control-static">{{$user->created_at}}</p>
                </div>
                <div class="form-group">
                 <label for="picture">PICTURE</label>
                  @if($user['picture'] != null)
                    <img width="100" height="100" src="{{ asset($user->picture) }}" class="img-responsive"/>
                  @else
                    <img width="100" height="100" src="{{ asset("/upload/images/profil/noimage.png") }}" class="img-responsive">
                  @endif
                 </div>
            </form>

            <a class="btn btn-link" href="{{ route('user.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>

        </div>
    </div>

    </section>
    <!-- /.content -->
  </div>
@include('layouts.footer') 
</body>
</html>