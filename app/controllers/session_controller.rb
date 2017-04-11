class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #log in and create session
    else
      # Create error message
      flash.now[:danger] = "Combinaison login/mdp incorrecte"
      render "new"
    end
  end

  def destroy
  end
end
