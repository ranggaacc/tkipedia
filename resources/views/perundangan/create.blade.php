@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
  <div class="page-header">
      <h1><i class="glyphicon glyphicon-edit"></i> Perundangan / Create</h1>
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
                <input type="hidden" name="_token" value="{{ csrf_token() }}">

                <div class="form-group @if($errors->has('uu')) has-error @endif">
                       <label for="uu-field">UU</label>
                    <input type="text" id="UU-field" name="uu" class="form-control" value="{{ old("uu") }}"/>
                       @if($errors->has("uu"))
                        <span class="help-block">{{ $errors->first("UU") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('perpu')) has-error @endif">
                       <label for="perpu-field">PERPU</label>
                    <input type="text" id="perpu-field" name="perpu" class="form-control" value="{{ old("perpu") }}"/>
                       @if($errors->has("perpu"))
                        <span class="help-block">{{ $errors->first("perpu") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('pp')) has-error @endif">
                       <label for="pp-field">PP</label>
                    <input type="text" id="pp-field" name="pp" class="form-control" value="{{ old("pp") }}"/>
                       @if($errors->has("pp"))
                        <span class="help-block">{{ $errors->first("pp") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('perpres')) has-error @endif">
                       <label for="perpres-field">PERPRES</label>
                    <input type="text" id="perpres-field" name="perpres" class="form-control" value="{{ old("perpres") }}"/>
                       @if($errors->has("perpres"))
                        <span class="help-block">{{ $errors->first("perpres") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('kepres')) has-error @endif">
                       <label for="kepres-field">KEPRES</label>
                    <input type="text" id="kepres-field" name="kepres" class="form-control" value="{{ old("kepres") }}"/>
                       @if($errors->has("kepres"))
                        <span class="help-block">{{ $errors->first("kepres") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('inpres')) has-error @endif">
                       <label for="inpres-field">INPRES</label>
                    <input type="text" id="inpres-field" name="inpres" class="form-control" value="{{ old("inpres") }}"/>
                       @if($errors->has("inpres"))
                        <span class="help-block">{{ $errors->first("inpres") }}</span>
                       @endif
                    </div>
                <div class="well well-sm">
                    <button type="submit" class="btn btn-primary">Create</button>
                    <a class="btn btn-link pull-right" href="{{ route('perundangans.index') }}"><i class="glyphicon glyphicon-backward"></i> Back</a>
                </div>
            </form>

        </div>
    </div>
</section>
    <!-- /.content -->
  </div>
@include('layouts.footer')
</body>
</html>

