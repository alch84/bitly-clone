require 'byebug'

get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :"static/index"
end

post '/urls' do
  # shorten
  long = params[:long_url]
  byebug
end

get '/:short_url' do
  shorten
end

