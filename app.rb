require 'sinatra'
require 'sinatra/reloader' #この行を追加。sinatra-contribはこのために必要
#これを追加するといちいち再起動の必要がなくなる(ホットデプロイ)

get '/' do
    "Hello world"
end


get '/path/to' do
    "this is [/path/to]"
end


get '/hello/*'  do |name|
    "hello #{name}. how are you?"
end
#ワイルドカード部分が変数nameに代入される　URLから値を受け取ることができる

get '/erb_template_page' do
    erb :erb_template_page
end
#erbを返す

get '/markdown_template_page' do
    markdown :markdown_template_page
end
#マークダウンファイルを返す

