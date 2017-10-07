class PlaylistMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.playlist_mailer.weekly.subject
  #
  def weekly(playlist)
    @playlist = playlist
    @user = playlist.user

    mail to: @user.email,
      subject: "Weekly track listing: #{@playlist.name}",
      from: 'tracks@zdnenterprises.com'
  end
end
