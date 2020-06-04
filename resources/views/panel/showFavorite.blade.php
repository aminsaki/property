@extends('layouts.app')

@section('content')
    <div class="container">
        @if(session()->has('massages'))
            <div class="alert alert-success text-center" >
                {{session('massages')}}
            </div>
            <hr>
        @endif
            @if(count($) > 0 )

            @foreach ($->all() as $error)
                    <div>{{ $error }}</div>
                @endforeach
            @endif
        <table class="table">
            <thead class="thead-light">
            <tr class="text-center">
                <th scope="col">#</th>
                <th scope="col">عنوان</th>
                <th scope="col">توضحیات</th>
                <th scope="col">عکس</th>
                <th scope="col">عملیات</th>
            </tr>
            </thead>
            <tbody >
            <?php $i = 1;?>
            @foreach($favorite->propertys as $row)
                <tr class="text-center">
                    <td>{{$i++}}</td>
                    <td>{{$row->title}}</td>
                    <td>{{$row->description}}</td>
                    <td>@foreach($row->images as $img)
                            <img src="{{asset($img->url.$img->title)}}" class="img-thumbnail" width="60px"
                                 height="90px">
                        @endforeach

                    </td>
                    <td><a href="{{url("favorite/delete/".$row->id)}}" title="حذف از لیست مورد علاقمند های شما" class="btn btn-danger">حذف از لیست</a></td>
                </tr>
            @endforeach

            </tbody>

        </table>

    </div>
@endsection
