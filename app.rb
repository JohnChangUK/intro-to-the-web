require 'sinatra'
require 'Capybara'
require 'selenium-webdriver'

set :session_secret, 'super-secret'

  get '/' do
    "Hello Makers Academy!"
  end

  get '/secret' do
    "Shotgun"
  end

  get '/random-cat' do
    @names = ["John", "Albert", "Narayan"].sample
    erb(:index)
  end

  get '/cat-form' do
    erb(:cat_form)
  end

  post '/named-cat' do
    p params
    @names = params[:name]
    erb :index
  end
