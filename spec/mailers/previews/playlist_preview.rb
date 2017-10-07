# Preview all emails at http://localhost:3000/rails/mailers/playlist
class PlaylistPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/playlist/weekly
  def weekly
    PlaylistMailer.weekly
  end

end
