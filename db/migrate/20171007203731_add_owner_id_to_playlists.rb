class AddOwnerIdToPlaylists < ActiveRecord::Migration[5.1]
  def change
    add_column :playlists, :owner_id, :string
  end
end
