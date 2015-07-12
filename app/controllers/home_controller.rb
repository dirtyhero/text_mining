class HomeController < ActionController::Base
  layout 'home'
  before_filter :go_to_admin
  def index
  end
  private
  def go_to_admin
    redirect_to controller: 'admin/data_import', action: 'index' if user_signed_in?
  end
end
