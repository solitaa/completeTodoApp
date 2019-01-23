@extends('layouts.app')

@section('content')
    <div class="">
        <form action="/create/todo" method="POST">
            @csrf
            <input type="text" name="todo" placeholder="Create a todo">
        </form>
    </div>
    <hr>
    @foreach($todos as $todo)
        <p>{{$todo->todo}}</p>
    @endforeach
@endsection