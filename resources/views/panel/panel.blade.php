@extends('layouts.app')

@section('content')
    <div class="container">
        @can('isProperty')
            <a href="{{url('property/index')}}" class="btn btn-secondary text-right ">درج املاک</a>
        @elsecan('isAdmin')
            <a href="{{url('property/index')}}" class="btn btn-secondary text-right ">درج املاک</a>
        @elsecan('isUser')
            <a href="{{url('favorite/show')}}" class="btn btn-secondary text-right ">مشاهده لیست علاقمند ها</a>
        @endcan
    </div>
@endsection
