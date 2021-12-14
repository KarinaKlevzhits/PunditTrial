# frozen_string_literal: true

class ApplicationController < ActionController::Base
    include Pundit
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    def user_not_authorized
        redirect_to current_user, notice: "Not autorized"
    end
    def current_user
         User.first
    end
   

end
