class Admin::ApplicationController < ActionController::Base
  layout 'admin/layouts/application'
  before_filter :go_to_home
  private
  def go_to_home
    redirect_to controller: 'home', action: 'index' unless user_signed_in?
  end
end