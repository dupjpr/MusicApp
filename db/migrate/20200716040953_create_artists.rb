class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.text :name
      t.text :image_url

      t.timestamps
    end
  end
end
