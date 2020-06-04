@extends('layouts.app')

@section('content')
    <div class="container">
        @if(session()->has('massages'))
            <div class="alert alert-success text-center" >
                {{session('massages')}}
            </div>
        @endif

        <table class="table">
            <thead class="thead-light">
            <tr>
                <th scope="col">#</th>
                <th scope="col">عنوان</th>
                <th scope="col">توضحیات</th>
                <th scope="col">عکس</th>
                <th scope="col">وضیعت</th>
                <th scope="col">عملیات</th>
            </tr>
            </thead>
            <tbody>
            <?php $i = 1;?>
            @foreach($property as $row)
                <tr>
                    <td>{{$i++}}</td>
                    <td>{{$row->title}}</td>
                    <td>{{$row->description}}</td>
                    <td>@foreach($row->images as $img)
                            <img src="{{asset($img->url.$img->title)}}" class="img-thumbnail" width="60px"
                                 height="90px">
                        @endforeach
                    </td>
                    <td>
                    @if($row->status == "false")
                        <a href="{{url('property/confirmation')}}/{{$row->id}}" class="btn btn-danger">منتشر کردن </a>
                    @else
                        <a href="#"  class="btn btn-success">منتشر شده </a>

                    @endif


                    </td>
                    <td><a href="#" class="btn btn-dark" title="طراحی نشده ">ویرایش</a></td>
                </tr>
            @endforeach

            </tbody>

        </table>
        <div class="form-group">
            {{$property->links()}}
        </div>
    </div>
@endsection
