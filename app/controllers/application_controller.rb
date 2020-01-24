class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_user

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        end
    end

    def authorize(auth_type, creator = nil)
        (creator.nil?) ? send(auth_type) : send(auth_type, creator)
    end

    private
    def user
        unless is_user?
            flash[:alert] = "You aren't authorized to visit that page."
            redirect_to '/'
        end
    end
    def creator(creator_obj)
        unless is_user? && (is_creator?(creator_obj) || is_admin?)
            flash[:alert] = "You aren't authorized to visit that page."
            redirect_to '/'
        end
    end
    def admin
        unless is_user? && is_admin?
            flash[:alert] = "You aren't authorized to visit that page."
            redirect_to '/'
        end
    end

    def is_user?
        !current_user.nil?
    end
    def is_creator?(creator)
        current_user.id == creator.id
    end
    def is_admin?
        current_user.admin
    end
end
