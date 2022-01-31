@extends('layouts.app')

@section('content')
    <div class="container mt-4">
        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
            @endif
        <div class="row">
            <div class="col-sm-10"><h1>Student Lists</h1></div>
            <div class="col-sm-auto text-right">
                <a href="{{route('student.create')}}" class="btn btn-primary text-right">Add Student</a>
            </div>
        </div>
        <table class="table table-borderless table-light">
            <thead>
                <tr>
                    <th scope="col">#ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Age</th>
                    <th scope="col">Major</th>
                    <th scope="col">Class</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($items as $item)
                <tr>
                    <th scope="row">{{$item->id}}</th>
                    <td>{{$item->name}}</td>
                    <td>{{$item->age}}</td>
                    <td>{{$item->major}}</td>
                    <td>{{$item->class}}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection