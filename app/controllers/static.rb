get '/' do
@urls = Url.all
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :"static/index"
end

post '/urls' do
  @new = Url.create(url: params[:long_url])
  redirect to '/'
end

get '/:short_url' do
  @url = Url.find_by(shortened_url: params[:short_url])
  redirect "#{@url.url}"
  # url.save
  # redirect to "#{url.url}"
end
