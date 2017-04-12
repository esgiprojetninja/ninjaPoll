module SessionHelper
  def log_in(user)
    session[:user_id] = user.id
    session[:is_admin] = user.admin
  end

  def log_out
    session.delete(:user_id)
    session.delete(:is_admin)
    @current_user = nil
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def redirect_if_not_admin
    if !session[:is_admin]
      redirect_to root_url
    end
  end

  def is_admin?
    !session[:is_admin]
  end
end
