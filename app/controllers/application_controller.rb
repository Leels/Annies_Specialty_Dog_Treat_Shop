class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def authorize
    if !current_user
      flash[:alert] = "You aren't authorized to visit that page"
      redirect_to '/'
    end
  end

  def creator_auth(creator_id)
       if current_user.nil? || ((current_user.permissions != 'admin') && (current_user.id != creator_id))
           flash[:alert] = 'You\'re doing great! Keep trying, buddy :)'
           redirect_to '/'
       end
   end

   def admin_auth
        unless (current_user.permissions == 'admin')
            flash[:alert] = 'Nope.'
            redirect_to '/'
        end
    end
end
