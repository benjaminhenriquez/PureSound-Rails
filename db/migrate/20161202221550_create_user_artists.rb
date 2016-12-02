class CreateUserArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :user_artists do |t|
      t.integer :artist_id
      t.integer :user_id

      t.timestamps
    end
  end
end
