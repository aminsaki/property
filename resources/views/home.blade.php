@extends('layouts.app')

@section('content')
<div class="container">
    @if(session()->has('massages'))
        <div class="alert alert-success text-center" >
            {{session('massages')}}
        </div>
        <hr>
    @endif
        @if(count($errors) > 0 )

        @foreach ($errors->all() as $errors)
                <div>{{ $errors }}</div>
            @endforeach
        @endif

    <div class="row">
        @foreach($property as $row)
        <div class="col-md-4">
            <figure class="card card-product">
                <div class="img-wrap">
                    @foreach($row->images as $img)
                        <img src="{{asset($img->url.$img->title)}}"  class="col-lg-12" >
                    @endforeach
                </div>
                <figcaption class="info-wrap">
                    <h4 class="title">{{$row->title}}</h4>
                    <p class="desc">{{$row->description}}</p>

                </figcaption>
                @if(\Auth::check() and \Auth::user()->can('isUser') )
                <div class="bottom-wrap">
                    <a href="{{url('favorite/add/'.$row->id)}}" class="btn btn-sm btn-danger float-right">اضافه کردن علاقمند ها</a>
                </div> <!-- bottom-wrap.// -->
                    @endif
            </figure>
        </div> <!-- col // -->
        @endforeach
    </div> <!-- row.// -->

</div>
@endsection

