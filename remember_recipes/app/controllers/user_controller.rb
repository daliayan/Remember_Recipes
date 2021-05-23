class UserController < ApplicationController

    get '/signup' do
        erb :'users/new'
    end

    post '/signup' do
        user = User.new(params)
        if User.find_by_username(params[:username])
            redirect '/taken_username'
        elsif 
            params[:username] == "" || params[:password] == ""
            redirect '/error'
        else
            user.save
            session[:user_id] = user.id
            redirect '/recipes'
        end
    end


end