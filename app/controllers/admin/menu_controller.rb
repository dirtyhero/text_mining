class Admin::MenuController < Admin::ApplicationController
  require 'csv'

  def index
  end

  def import_csv
    p params
    p csv_file = params[:csv_file]
    p csv_text = csv_file.read

    
    flash[:notice] = 'file_upload OK!!'
    redirect_to action: 'index'
  end
  
end
