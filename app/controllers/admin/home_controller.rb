class Admin::HomeController < Admin::AuthenticatedController
  def index
    render "home/index"
  end
end
