class KbaController < ApplicationController
 def new
  end


def create 

user= User.find_by(place_of_birth: params[:kba][:place_of_birth]) ||  User.find_by(date_of_birth: params[:kba][:date_of_birth]) || User.find_by(favorite_sport: params[:kba][:favorite_sport]) || User.find_by(favorite_music: params[:kba][:favorite_music]) 

 
    if user
     log_in user
 params[:kba][:remember_me] == '1' ? remember(user) : forget(user)

    redirect_to user
    else
 flash.now[:danger] = 'your score is too low' # Not quite right!
      render 'new'
    end
  end

  def destroy
  log_out if logged_in?
  redirect_to root_url
 end

end

 

