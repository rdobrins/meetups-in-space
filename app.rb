require 'sinatra'
require_relative 'config/application'
require 'pry'

helpers do
  def current_user
    user_id = session[:user_id]
    @current_user ||= User.find(user_id) if user_id.present?
  end
end

def all_meetups
  Meetup.all
end

get '/' do
  redirect '/meetups'
end

get '/auth/github/callback' do
  user = User.find_or_create_from_omniauth(env['omniauth.auth'])
  session[:user_id] = user.id
  flash[:notice] = "You're now signed in as #{user.username}!"

  redirect '/'
end

get '/sign_out' do
  session[:user_id] = nil
  flash[:notice] = "You have been signed out."

  redirect '/'
end

get '/meetups' do
  @meetups = all_meetups
  erb :'meetups/index'
end

post '/meetups/new' do

  @meetup = Meetup.new(what: params[:what], why: params[:why], where: params[:where], when: params[:when])

  if @meetup.save
    flash[:notice] = "YAY good job user!"
    redirect "/meetups"
  else
    flash[:notice] = "Bad user! Here are error messages!"
    erb :'meetups/new_meetup'
  end

end

post '/meetups/join' do

  user = current_user
  meetup = params[:meetup_id]

  if user.nil?
    flash[:success] = "YOU MUST BE LOGGED IN TO JOIN!!!"
    redirect "/meetups"
  else
    @usermeetup = Usermeetup.new(user_id: user.id, meetup_id: meetup)

    if @usermeetup.save
      flash[:success] = "YOU JOINED THE MEETUP!!!"
      redirect "/meetups"
    end
  end
end


get '/meetups/new' do
  erb :'meetups/new_meetup'
end

get '/meetups/:id' do
  @meetup = Meetup.find(params[:id])
  @attendees = @meetup.users
  erb :'meetups/meetup_info'
end
