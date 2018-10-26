class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content
      t.timestamps 
      t.references :user, foreign_key: true
    end
  end
end
