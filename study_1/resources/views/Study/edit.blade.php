@extends('layouts.app')

@section('content')
    <div class="container mt-3">
        <div class="card p-2">
            @if (session('error'))
            <div class="alert alert-error">
                {{ session('error') }}
            </div>
            @endif


            <form action="{{route('study.update', $item->id)}}" method="POST">
                {{-- @dd($students) --}}
                @csrf
                @method('PUT')
                <div class="form-group col-sm-6">
                    <label for="student_id">Npm</label>
                    <select name="grade" class="form-control">
                        <option value="{{$item->student->id}}">{{$item->student->npm}}</option>
                    </select>
                </div>
                <div class="form-group col-sm-6">
                    <label for="name">modul</label>
                    <input type="text" name="modul" class="form-control" id="modul" value="{{$item->modul}}">
                </div>
                <div class="form-group col-sm-6">
                    <label for="grade">grade</label>
                    <select name="grade" class="form-control">
                        <option value="{{$item->grade}}">{{$item->grade}}</option>
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                        <option value="D">D</option>
                        <option value="E">E</option>
                    </select>
                </div>
                <div class="col-sm-6">
                    <button type="submit" class="btn btn-success btn-block">Submit</button>
                </div>
            </form>
        </div>
    </div>
@endsection