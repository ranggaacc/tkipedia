@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
  <div class="page-header">
      <h1><i class="glyphicon glyphicon-edit"></i> Artikel / Edit</h1>
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

            <form action="{{ route('artikels.update', $artikel->id) }}" enctype="multipart/form-data" method="POST">
                <input type="hidden" name="_method" value="PUT">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">

                <div class="form-group @if($errors->has('title')) has-error @endif">
                       <label for="title-field">Title</label>
                    <input type="text" id="title-field" name="title" class="form-control" value="{{ is_null(old("title")) ? $artikel->title : old("title") }}"/>
                       @if($errors->has("title"))
                        <span class="help-block">{{ $errors->first("title") }}</span>
                       @endif
                    </div>
{{--                     <div class="form-group @if($errors->has('user')) has-error @endif">
                       <label for="user-field">user</label>
                    <input type="text" id="user-field" name="user" class="form-control" value="{{ is_null(old("user")) ? $artikel->user : old("user") }}"/>
                       @if($errors->has("user"))
                        <span class="help-block">{{ $errors->first("user") }}</span>
                       @endif
                    </div> --}}
                    <div class="form-group @if($errors->has('tanggal')) has-error @endif">
                       <label for="tanggal-field">Tanggal Terbit</label>
                    <input type="date" id="tanggal-field" name="tanggal" class="form-control date-picker" value="{{ old("tanggal") }}"/>
                       @if($errors->has("tanggal"))
                        <span class="help-block">{{ $errors->first("tanggal") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('description')) has-error @endif">
                       <label for="description-field">Description</label>
                    <textarea class="form-control" id="editor1" rows="3" name="description">{{ is_null(old("description")) ? $artikel->description : old("description") }}</textarea>
                       @if($errors->has("description"))
                        <span class="help-block">{{ $errors->first("description") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('picture')) has-error @endif">
                       <label for="picture-field">Picture</label>
                    <input type="file" id="picture-field" name="picture" accept="image/x-png,image/gif,image/jpeg" class="form-control" value="{{ is_null(old("picture")) ? $artikel->picture : old("picture") }}"/>
                       @if($errors->has("picture"))
                        <span class="help-block">{{ $errors->first("picture") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('file1')) has-error @endif">
                       <label for="picture-field">File1</label>
                    <input type="file" id="file2-field" name="file1" accept="application/pdf,image/x-png,image/gif,image/jpeg" class="form-control" value="{{ is_null(old("file1")) ? $artikel->file1 : old("file1") }}"/>
                       @if($errors->has("file1"))
                        <span class="help-block">{{ $errors->first("file1") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('file2')) has-error @endif">
                       <label for="picture-field">File2</label>
                    <input type="file" id="file2-field" name="file2" accept="application/pdf,image/x-png,image/gif,image/jpeg" class="form-control" value="{{ is_null(old("file2")) ? $artikel->file2 : old("file2") }}"/>
                       @if($errors->has("file2"))
                        <span class="help-block">{{ $errors->first("file2") }}</span>
                       @endif
                    </div>
                <div class="well well-sm">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a class="btn btn-link pull-right" href="{{ route('artikels.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>
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
</body>
</html>
