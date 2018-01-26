@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
  <div class="page-header">
      <h1><i class="glyphicon glyphicon-edit"></i> User / Edit</h1>
  </div>
  </section>
    <!-- Main content -->
  <section class="content">
      @include('error')
      @if(Session::has('message'))
         <p class="alert {{ Session::get('alert-class', 'alert-danger') }}">{{ Session::get('message') }}</p>
      @elseif(Session::has('message2'))
         <p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message2') }}</p>
      @endif

    <div class="row">
        <div class="col-md-12">

            <form action="{{ route('user.update', $user->id) }}" enctype="multipart/form-data" method="POST">
                <input type="hidden" name="_method" value="PUT">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">

                    <div class="form-group @if($errors->has('nama')) has-error @endif">
                       <label for="nama-field">Nama</label>
                    <input type="text" id="nama-field" name="nama" class="form-control" value="{{ is_null(old("nama")) ? $user->nama : old("nama") }}"/>
                       @if($errors->has("nama"))
                        <span class="help-block">{{ $errors->first("nama") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('email')) has-error @endif">
                       <label for="email-field">Email</label>
                    <input type="text" id="email-field" name="email" class="form-control" value="{{ is_null(old("email")) ? $user->email : old("email") }}"/>
                       @if($errors->has("email"))
                        <span class="help-block">{{ $errors->first("email") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('kontak')) has-error @endif">
                       <label for="kontak-field">Nomor Kontak</label>
                    <input type="text" id="kontak-field" name="kontak" class="form-control" value="{{ is_null(old("kontak")) ? $user->kontak : old("kontak") }}"/>
                       @if($errors->has("kontak"))
                        <span class="help-block">{{ $errors->first("kontak") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('role')) has-error @endif">
                       <label for="role-field">role</label>
                      <select class="form-control" name="role">
                        <option value="admin">Admin</option>
                        <option value="publisher">Publisher</option>
                        <option value="publik">Publik</option>
                        <option value="approval">Approval</option>
                        <option value="entry">Entry</option>
                      </select>
                       @if($errors->has("role"))
                        <span class="help-block">{{ $errors->first("role") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('alamat')) has-error @endif">
                       <label for="alamat-field">Alamat</label>
                    <input type="text" id="alamat-field" name="alamat" class="form-control" value="{{ is_null(old("alamat")) ? $user->alamat : old("alamat") }}"/>
                       @if($errors->has("alamat"))
                        <span class="help-block">{{ $errors->first("alamat") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('status')) has-error @endif">
                    <div class="checkbox">
                        <label>
                        <input type="checkbox" name="status" checked="checked" value="{{ is_null(old("status")) ? $user->status : old("status") }}">
                            Status
                        </label>
                    @if($errors->has("status"))
                    <span class="help-block">{{ $errors->first("status") }}</span>
                    @endif
                    </div>
                    </div>
                    <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                    <label for="password" >Sandi</label>
                        <input id="password" type="password" class="form-control" name="password">
                        @if ($errors->has('password'))
                            <span class="help-block">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        @endif
                    </div>
                    <div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
                        <label for="password-confirm" >Konfirmasi Sandi</label>
                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation">
                            @if ($errors->has('password_confirmation'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('password_confirmation') }}</strong>
                                </span>
                            @endif
                    </div>
                    <div class="form-group @if($errors->has('picture')) has-error @endif">
                        <div>
                            <img class="img-circle" style="margin-bottom:5px;" width="100" height="100" id="avatar" @if($user->picture) src="{{ $user->picture }}" @else src="http://nanoup.net/assets/userdata/avatar/thumbs/default-avatar.png" @endif>
                            <input type="file" id="picture" name="picture" accept="image/x-png,image/gif,image/jpeg" onchange="loadFile(event)">
                            @if ($errors->has('picture'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('picture') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                <div class="well well-sm">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a class="btn btn-link pull-right" href="{{ route('user.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>
                </div>
            </form>
        </div>
    </div>
    </section>
    <!-- /.content -->
  </div>
@include('layouts.footer')
<script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1');
    document.getElementById("tanggal-field").valueAsDate = new Date();
    
  });
</script>
    <script>
        $('[name=nama]').val("{{ $user->nama }}");
        $('[name=email]').val("{{ $user->email }}");
        $('[name=kontak]').val("{{ $user->kontak }}");
        $('[name=role]').val("{{ $user->role }}");
        $('[name=alamat]').val("{{ $user->alamat }}");
        var loadFile = function(event) {
        var output = document.getElementById('avatar');
        output.src = URL.createObjectURL(event.target.files[0]);
        };
    </script> 
</body>
</html>
