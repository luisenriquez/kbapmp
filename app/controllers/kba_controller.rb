class KbaController < ApplicationController
 def new
  end



def create
    user = User.find_by(place_of_birth: params[:kba][:place_of_birth], favorite_sport: params[:kba][:favorite_sport] )
    if user
     log_in user
 params[:kba][:remember_me] == '1' ? remember(user) : forget(user)

    redirect_to user
    else
 flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
  log_out if logged_in?
  redirect_to root_url
 end

end

 

