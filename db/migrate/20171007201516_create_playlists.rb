class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.references :user, foreign_key: true
      t.string :spotify_id
      t.string :owner_name
      t.string :name

      t.timestamps
    end
  end
end
