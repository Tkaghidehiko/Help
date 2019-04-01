class CreateTames < ActiveRecord::Migration[5.2]
  def change
    create_table :tames do |t|
      t.string :tame_name
      t.references :genre_id, foreign_key: true

      t.timestamps
    end
  end
end
