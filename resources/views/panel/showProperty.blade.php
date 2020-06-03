@extends('layouts.app')

@section('content')
    <div class="container">

        <table class="table">
            <thead class="thead-light">
            <tr>
                <th scope="col">#</th>
                <th scope="col">عنوان</th>
                <th scope="col">توضحیات</th>
                <th scope="col">عکس</th>
                <th scope="col">عملیات</th>
            </tr>
            </thead>
            <tbody>
            @foreach($property as $row)
                <tr>
                     <td>{{$row->id}}</td>
                     <td>{{$row->title}}</td>
                     <td>{{$row->description}}</td>
                     <td>@foreach($row->images as $img)
                             <img src="{{asset($img->url.$img->title)}}" class="img-thumbnail" width="60px" height="90px" >
                         @endforeach
                     </td>
                    <td><a href="Edit/property/{{$row->id}}">ویرایش</a> </td>
                </tr>
            @endforeach

            </tbody>

        </table>
         <div class="form-group">
               {{$property->links()}}
         </div>
    </div>
@endsection
