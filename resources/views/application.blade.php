@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <h1>Postagens</h1>
            <br>
            <h3>Título</h3>
            <form method="POST">
                {{csrf_field()}} <!--Aumenta a segurança para o método POST, evita postagem que não seja pelo formulário-->
                <input type="text" name="title" class="col-md-6" >
                <br>
                <h3>Digite seu comentário</h3>
                <textarea type="text" name="item" rows="7" cols="120"></textarea>
                <input type="submit" value="Enviar">
            </form>

            <hr>
            <h1>Postagens publicadas</h1>

            @foreach($lista as $listas)
                <li class="list-group-item" style="margin-top:20px">
                    <span>
                    <h2>{{$listas->title}}</h2><hr><br>
                    <h4>{{$listas->item}}
                    <a href="delete/{{$listas->id}}" style="text-decoration:none;"><br><br></h4>
                    <input type="submit" value="Exlcuir"></a>
                    </span>
                </li>
            @endforeach

        </div>
    </div>
</div>

@endsection

            <!-- <!-- <hr> -->
            <!-- <h1>Postagens publicadas</h1>
            <br>
            @if(count($lista) > 0)
                <ul><hr>
                @foreach($lista as $title)
                <h2>{{$title->title}}<a href="delete/{{$title->id}}"><hr><input type="submit" value="Exlcuir"></h2>
                @endforeach
                </ul>
            @else                
            @endif <br>

            @if(count($lista) > 0)
                <ul>
                @foreach($lista as $item)
                <p>{{$item->item}} <a href="delete/{{$item->id}}"><hr><input type="submit" value="Exlcuir"></a></p>
                @endforeach
                </ul>
            @else
                <h4>Não há postagens publicadas ainda.</h4>
            @endif -->