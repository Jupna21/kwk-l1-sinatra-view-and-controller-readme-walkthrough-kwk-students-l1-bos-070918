require_relative 'config/environment'

class App < Sinatra::Base
get '/reverse' do
  erb "reverse"
end

post '/reverse' do
  original_string = params["string"]
  @reversed_string = original_string.reverse
  erb :reversed
end
  
  get '/friends' do
    friends = ['Emily Wilding Dawison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojurner Truth']
    erb :friends
  end 
end



#   get '/reverse/:name' do
#     @username = params[:name]
#     @username = @name.reverse
#     "Your reversed string is: #{@username}."
#   end
  
#   get '/square/:number' do
#     @num = params[:number].to_i
#     @num = @num**2
#     "#{@num}"
#   end
  
    
#     return @all_phrases
    
#   end

# end