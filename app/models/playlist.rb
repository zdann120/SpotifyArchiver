class Playlist < ApplicationRecord
  belongs_to :user

  def self.populate_from_user(u)
    list = u.spotify_user.playlists.map{|pl| {spotify_id: pl.id, name: pl.name, owner_name: pl.owner.display_name, owner_id: pl.owner.id}}
    list.each do |pl|
      u.playlists.create(pl)
    end
  end
end
