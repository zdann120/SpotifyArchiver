class PlaylistsController < ApplicationController
  def send_mail
    @playlist = Playlist.find_by_spotify_id(params[:playlist][:id])
    PlaylistMailer.track_listing(@playlist).deliver_now
    redirect_to root_path, notice: 'Playlist has been emailed.'
  end
end
