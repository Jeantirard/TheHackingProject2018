class CreateCommentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :commentarios do |t|
      t.text :content
      t.references :coment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
