@component('mail::message')

# 新しいユーザーが追加されました！

@component('mail::panel')
{{ $toUser->name }}さん、こんにちは！
@endcomponent

@component('mail::button', ['url' => route('tweet.index')])
つぶやきを見に行く
@endcomponent

@endcomponent