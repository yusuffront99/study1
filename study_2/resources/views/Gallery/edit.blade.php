@extends('layouts.app')

@section('content')
    <div class="container mt-3">
        <div class="card p-2">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{$error}}</li>
                        @endforeach
                    </ul>
                </div>
            @endif


            <form action="{{route('gallery.update', $item->id)}}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group col-sm-6">
                    <label for="student_id">Nama</label>
                    <select name="student_id" class="form-control">
                        <option value="{{$item->student_id}}">{{$item->student->name}}</option>
                    </select>
                </div>
                <div class="form-group col-sm-6">
                    <label for="image">Profil Image</label>
                    {{-- @dd($item->image) --}}
                    <input type="hidden" name="oldImage" id="image" aria-describedby="imageHelp" value="{{$item->image}}" >
                    <div class="p-3">
                        <img src="{{asset('storage/' . $item->image)}}" style="width: 50px" alt="">
                    </div>
                    <input type="file" name="image" class="form-control" id="image" aria-describedby="imageHelp">
                </div>
                <div class="col-sm-6">
                    <button type="submit" class="btn btn-success btn-block">Submit</button>
                </div>
            </form>
        </div>
    </div>
@endsection