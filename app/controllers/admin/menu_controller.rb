class Admin::MenuController < Admin::ApplicationController
  require 'csv'

  def index
    @file_upload_result = FileUploadResult.limit(10)
  end

  def import_csv
    p params
    p csv_file = params[:csv_file]
    p @csv_text = csv_file.read
    file = FileUploadResult.new(
      :upload_file_name=>csv_file.original_filename
    ).save!

    # DBに書き込み
    WordAnalysis.import(@csv_text)


    if file
      flash[:notice] = 'file_upload OK!!'
      redirect_to action: 'index'
    else
      flash[:notice] = 'file_upload NG!!'
      redirect_to action: 'index'
    end
  end

end
