@extends('layouts.app')

@section('content')
    <div class="">
        <form action="{{ route('todo.save', ['id' => $todo->id])}}" method="POST">
            @csrf
            <input type="text" value="{{$todo->todo}}" name="todo" placeholder="Create a todo">
        </form>
    </div>
@endsection