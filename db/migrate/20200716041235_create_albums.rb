class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.references :artist, null: false, foreign_key: true
      t.text :name
      t.text :image_url
      t.text :released_at

      t.timestamps
    end
  end
end
