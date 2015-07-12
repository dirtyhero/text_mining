class CreateFileUploadResults < ActiveRecord::Migration
  def change
    create_table :file_upload_results do |t|
      t.string :upload_file_name

      t.timestamps null: false
    end
  end
end
