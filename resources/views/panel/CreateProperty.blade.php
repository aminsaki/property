@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row text-right">
            <div class="col-md-3"></div>
            <div class="col-md-6 ">
                @if(session()->has('massages'))
                        <div class="alert alert-success text-center" >
                           {{session('massages')}}
                    </div>
                @endif
                    @if(count($errors) > 0 )

                    @foreach ($errors->all() as $errors)
                            <div class="alert alert-success text-center" >{{ $errors }}</div>
                        @endforeach
                    @endif


                    <a href="{{url('property/show')}}" class="btn btn-secondary text-right ">مشاهد لیست درج شده</a>
                    <hr>
                    <form method="post" action="{{url('property/create')}}" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="exampleInputEmail1">عنوان</label>
                        <input type="text" class="form-control" name="title" aria-describedby="emailHelp"
                               placeholder="Enter  title">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">توضیحات</label>
                        <textarea name="description" class="form-control"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1">نوع ملاک</label>

                        <select name="categorie_id" class="form-control">
                            <option value="1">ارپاتمان</option>
                            <option value="2">ویلایی</option>
                            <option value="3">باغ</option>
                        </select>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">مناطق</label>

                        <select name="area_id" class="form-control">
                            @foreach($areas as $row)
                                <option value="{{$row->id}}">{{$row->title}}</option>

                            @endforeach
                        </select>

                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1">اپلود عکس </label>

                        <input type="file" name="url" class="form-control">
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <div class="col-md-1"> </div>
        </div>

    </div>
@endsection

