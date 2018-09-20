require 'sinatra/base'
require_relative 'lib/today'

class Birthday < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/date' do
    session[:username] = params[:username]
    session[:day] = params[:day]
    session[:month] = params[:month]
    today = Today.new(params[:day],params[:month])
    redirect '/birthday' if today.today?
    redirect '/nobirthday' if !today.today?
  end

  get '/nobirthday' do
    today = Today.new(session[:day],session[:month])
    @countdown_days = today.countdown_days
    @countdown_months = today.countdown_months
    erb :no_birthday
  end

  get '/birthday' do
    @username = session[:username]
    @day = session[:day]
    @month = session[:month]
    erb :birthday_page
  end

  run! if app_file == $0
end
