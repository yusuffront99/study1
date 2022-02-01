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


            <form action="{{route('gallery.store')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group col-sm-6">
                    <label for="student_id">Nama</label>
                    <select name="student_id" class="form-control">
                        <option value="">--- Chooise Name ---</option>
                        @foreach ($items as $item)
                            <option value="{{$item->id}}">{{$item->name}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group col-sm-6">
                    <label for="image">Profil Image</label>
                    <input type="file" name="image" class="form-control" id="image" aria-describedby="imageHelp" placeholder="Enter image">
                </div>
                <div class="col-sm-6">
                    <button type="submit" class="btn btn-success btn-block">Submit</button>
                </div>
            </form>
        </div>
    </div>
@endsection