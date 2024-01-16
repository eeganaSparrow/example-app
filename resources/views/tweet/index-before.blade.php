<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,
        maximum-scale=1/0, minimum-sclae=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @vite('resources/css/app.css')
    @vite('resources/js/app.js')
    <title>つぶやきアプリ</title>
</head>
<body class="bg-gray-50">
    <h1>つぶやきアプリ</h1>
   
        <div>
        @foreach($tweets as $tweet)
        <details>
            <summary>{{$tweet->content}} by {{ $tweet->user->name }}</summary>
            @if(\Illuminate\Support\Facades\Auth::id() === $tweet->user_id)
            <div>
                <a href="{{route('tweet.update.index', ['tweetId' => $tweet->id])}}">編集</a>
                <form action="{{ route('tweet.delete', ['tweetId' => $tweet->id])}}" method="post">
                    @method('DELETE')
                    @csrf
                    <button type="submit">削除</button>
                </form>
            </div>
            @else
                <span style="color:blue;">編集できません</span>
            @endif
        </details>
        @endforeach
    </div>
</body>
</html>