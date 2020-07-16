class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.references :album, null: false, foreign_key: true
      t.text :name
      t.integer :number
      t.text :preview_url

      t.timestamps
    end
  end
end
