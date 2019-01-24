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
        <p>{{$todo->todo}} 
            <a href="{{ route('todo.update', ['id' => $todo->id])}}" class="btn btn-primary btn-sm">update</a>
            <a href="{{ route('todo.delete', ['id' => $todo->id])}}" class="btn btn-danger btn-sm">x</a>
            @if(!$todo->completed)
                <a href="{{ route('todo.completed', ['id' => $todo->id])}}" class="btn btn-success btn-sm">Mark as completed</a>
            @else
                <span>completed</span>
            @endif
        </p>
        
    @endforeach
@endsection