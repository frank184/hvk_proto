class Admin::AuthenticatedController < AuthenticatedController
  before_action :authenticate_admin!

  private
    def authenticate_admin!
      puts "Admin function attempted access"
      unless @user.role_id == Role::SYSTEM_ADMINISTRATOR
        flash[:error] = "You are not allowed to access that"
        redirect_to "/" and return
      end
    end
end
