@extends('layouts.app')

@section('content')
    <div class="container mt-3">
        <div class="card p-2">
            @if (session('error'))
            <div class="alert alert-error">
                {{ session('error') }}
            </div>
            @endif


            <form action="{{route('student.store')}}" method="POST">
                @csrf
                <div class="form-group col-sm-6">
                    <label for="npm">Npm</label>
                    <input type="text" name="npm" class="form-control" id="npm" aria-describedby="npmHelp" placeholder="Enter npm">
                </div>
                <div class="form-group col-sm-6">
                    <label for="name">Name</label>
                    <input type="text" name="name" class="form-control" id="name" aria-describedby="nameHelp" placeholder="Enter name">
                </div>
                <div class="form-group col-sm-6">
                    <label for="age">Age</label>
                    <input type="text" name="age" class="form-control" id="age" aria-describedby="ageHelp" placeholder="Enter age">
                </div>
                <div class="form-group col-sm-6">
                    <label for="major">Major</label>
                    <select name="major" class="form-control">
                        <option value=""> Chooise Major</option>
                        <option value="architecture">Architecture</option>
                        <option value="Information of technology">Information of technology</option>
                        <option value="Lawyer">Lawyer</option>
                    </select>
                </div>
                <div class="form-group col-sm-6">
                    <label for="class">class</label>
                    <select name="class" id="" class="form-control">
                        <option value="" class="text-danger">--- Chooise Class</option>
                        <option value="AA">AA</option>
                        <option value="BB">BB</option>
                        <option value="CC">CC</option>
                        <option value="DD">DD</option>
                        <option value="EE">EE</option>
                    </select>
                </div>
                <div class="col-sm-6">
                    <button type="submit" class="btn btn-success btn-block">Submit</button>
                </div>
            </form>
        </div>
    </div>
@endsection