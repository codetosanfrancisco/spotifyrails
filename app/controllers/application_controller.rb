class ApplicationController < ActionController::Base

    before_action :authenticate_user!
    helper_method :current_company,:is_creator?

    def after_sign_out_path_for(user)
        new_user_session_path
    end

    def is_creator?
        current_user.creator?
    end

    def current_company
        current_user.company if is_creator?
    end
end
