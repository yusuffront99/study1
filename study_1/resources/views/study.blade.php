@extends('layouts.app')

@section('content')
    <div class="container mt-4">
        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
            @endif
        <div class="row">
            <div class="col-sm-10"><h1>Study Lists</h1></div>
            <div class="col-sm-auto text-right">
                <a href="{{route('study.create')}}" class="btn btn-primary text-right">Add Study</a>
            </div>
        </div>
        <table class="table table-borderless table-light">
            <thead>
                <tr>
                    <th scope="col">#ID</th>
                    <th scope="col">Npm</th>
                    <th scope="col">Modul</th>
                    <th scope="col">Grade</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                
                @foreach ($items as $item)
                <tr>
                    <th scope="row">{{$item->id}}</th>
                    <td>{{$item->student->npm}}</td>
                    <td>{{$item->modul}}</td>
                    <td>{{$item->grade}}</td>
                    <td>
                        <a href="{{route('study.edit', $item->id)}}" class="btn btn-sm btn-success mb-2">Edit</a>
                        <form action="{{route('study.destroy', $item->id)}}" method="POST">
                            @csrf
                            @method('delete')
                            <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection