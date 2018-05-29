require "sinatra"
get '/' do
  "Some other string"
end
get '/secret' do
  "Secret message"
end
get "/other"do
  "Other message"
end
get "/random-cat" do
  @name = ["Laura", "Lucy"].sample
  erb(:index)
end
get "/named-cat" do
  p params
  @name = params[:name]
  erb(:index)
end
