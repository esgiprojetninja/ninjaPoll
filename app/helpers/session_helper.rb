module SessionHelper
  def log_in(user)
    session[:user] = user.id
  end
end
