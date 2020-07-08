module SessionsHelper
    def log_in(user)
        session[:id] = User.find_by(id: session[:id])
    end

    def current_user
        if session[:id]
            @current_user ||= User.find_by(id: session[:id])
        end
    end


    def logged_in?
        !current_user.nil?
    end
    def current_user?(user)
        user == current_user
    end
    
    def log_out
        session.delete(:id)
        @current_user = nil
    end
    
    
end
