require_relative 'config/environment'

class App < Sinatra::Base

  
  get '/multiply/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    (@num1 * @num2).to_i
  end
  
  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end
end
