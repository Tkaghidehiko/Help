class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.string :title
      t.text :text
      t.string :image_file_id
      t.string :remarks
      t.references :user_id, foreign_key: true
      t.references :post_help_id, foreign_key: true

      t.timestamps
    end
  end
end
