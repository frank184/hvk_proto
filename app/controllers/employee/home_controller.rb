class Employee::HomeController < Employee::AuthenticatedController
  def index
    render "home/index"
  end
end
