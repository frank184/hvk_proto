class AuthenticatedController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :set_role
  before_action :set_index

  def index
    redirect_to @index
  end

  protected
    def after_sign_in_path_for(resource)
      @index
    end

    def after_sign_out_path_for(resource)
      unauthenticated_path
    end

  private
    def set_user
      @user = current_user
    end

    def set_role
      @role = @user.role_id
    end

    def set_index
      @index =  case @role
      when Role::CLIENT
        authenticated_path
      when Role::EMPLOYEE
        employee_authenticated_path
      when Role::SYSTEM_ADMINISTRATOR
        admin_authenticated_path
      end
    end
end
