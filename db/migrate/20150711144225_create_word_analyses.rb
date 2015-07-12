class CreateWordAnalyses < ActiveRecord::Migration
  def change
    create_table :word_analyses do |t|
      t.date :answering_date
      t.string :word
      t.string :part
      t.boolean :deleted
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
