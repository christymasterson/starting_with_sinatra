require 'sinatra'
set :session_secret, "My session secret"

get '/' do
  'Hello!'
end

get '/secret' do
  'This is a secret message'
end

get '/numbers' do
  '1.
   2.
   3.
   4.
   5.
   6.  '
end

get '/notes' do
  'Hello this is my note... '
end

get '/page' do
  'This is another opage'
end

get '/random-cat' do
  @cat_name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end
