class Employee::AuthenticatedController < AuthenticatedController
  before_action :authenticate_employee!

  private
    def authenticate_employee!
      puts "Employee function attempted access"
      unless @user.role_id >= Role::EMPLOYEE
        flash[:error] = "You are not allowed to access that"
        redirect_to "/" and return
      end
    end
end
