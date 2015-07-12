class CreateWordAnalyses < ActiveRecord::Migration
  def change
    create_table :word_analyses do |t|
      t.date :answering_date,null: false, default: ""
      t.string :word
      t.string :part
      t.boolean :deleted,null: false, default: 0
      t.integer :user_id,null: false, default: ""

      t.timestamps null: false
    end
  end
end
