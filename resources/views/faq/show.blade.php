@include('layouts.header')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<section class="content-header">
<div class="page-header">
        <h1>FAQ / Show #{{$faq->id}}</h1>
        <form action="{{ route('faq.destroy', $faq->id) }}" method="POST" style="display: inline;" onsubmit="if(confirm('Delete? Are you sure?')) { return true } else {return false };">
            <input type="hidden" name="_method" value="DELETE">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="btn-group pull-right" role="group" aria-label="...">
                <a class="btn btn-warning btn-group" role="group" href="{{ route('faqs.edit', $faq->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
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
                    <p class="form-control-static">{{$faq->id}}</p>
                </div>
                <div class="form-group">
                     <label for="title">TITLE</label>
                     <p class="form-control-static">{{$faq->title}}</p>
                </div>
                <div class="form-group">
                     <label for="title">KATEGORI</label>
                     <p class="form-control-static">{{$faq->kategori}}</p>
                </div>
                <div class="form-group">
                     <label for="user">USER</label>
                     <p class="form-control-static">{{$faq->user}}</p>
                </div>
                <div class="form-group">
                     <label for="description">DESCRIPTION</label>
                     <p class="form-control-static">{!!$faq->description!!}</p>
                </div>
                <div class="form-group">
                     <label for="description">CREATED_AT</label>
                     <p class="form-control-static">{{$faq->created_at}}</p>
                </div>
                @if($faq->file1!=null)
                <div class="form-group">
                     <label for="description">FILE 1</label>
                     <?php $splitted1 = preg_split('/\//', $faq->file1); ?>
                     <p class="form-control-static"><a href="{{asset($faq->file1) }}" download>{{$splitted1[sizeof($splitted1) - 1]}}</a></p>
                </div>
                @else
                <div class="form-group">
                     <label for="description">FILE 1</label>
                     <p class="form-control-static"><font color="blue">No File</font></p>
                </div>
                @endif
                @if($faq->file2!=null)
                <div class="form-group">
                     <label for="description">FILE 2</label>
                     <?php $splitted2 = preg_split('/\//', $faq->file2); ?>
                     <p class="form-control-static"><a href="{{asset($faq->file2) }}" download>{{$splitted2[sizeof($splitted2) - 1]}}</a></p>
                </div>
                @else
                <div class="form-group">
                     <label for="description">FILE 2</label>
                     <p class="form-control-static"><font color="blue">No File</font></p>
                </div>
                @endif
                    <div class="form-group">
                     <label for="picture">PICTURE</label>
                     <img width="100" height="100" src="{{ asset($faq->picture) }}" class="img-responsive"/>
                     </div>
            </form>

            <a class="btn btn-link" href="{{ route('faq.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>

        </div>
    </div>

    </section>
    <!-- /.content -->
  </div>
@include('layouts.footer') 
</body>
</html>