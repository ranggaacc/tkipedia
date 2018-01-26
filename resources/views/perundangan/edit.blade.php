@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
  <div class="page-header">
      <h1><i class="glyphicon glyphicon-edit"></i> Perundangan / Edit</h1>
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

            <form action="{{ route('perundangans.update', $perundangans->id) }}" enctype="multipart/form-data" method="POST">
                <input type="hidden" name="_method" value="PUT">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">

                <div class="form-group @if($errors->has('kategori')) has-error @endif">
                       <label for="kategori-field">Kategori</label>
                    <input type="text" id="kategori-field" name="kategori" class="form-control" value="{{ is_null(old("kategori")) ? $perundangans->kategori : old("kategori") }}" disabled="true" />
                       @if($errors->has("kategori"))
                        <span class="help-block">{{ $errors->first("kategori") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('link')) has-error @endif">
                       <label for="link-field">link</label>
                    <input type="text" id="link-field" name="link" class="form-control" value="{{ is_null(old("link")) ? $perundangans->link : old("link") }}"/>
                       @if($errors->has("link"))
                        <span class="help-block">{{ $errors->first("link") }}</span>
                       @endif
                    </div>
                <div class="well well-sm">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a class="btn btn-link pull-right" href="{{ route('perundangans.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>
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
