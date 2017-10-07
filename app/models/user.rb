class User < ApplicationRecord
  has_many :playlists
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  def credentials
    auth_hash['credentials']
  end

  def token
    credentials['token']
  end

  def token_expiration
    credentials['expires_at']
  end

  def refresh_token
    credentials['refresh_token']
  end

  def spotify_user
    RSpotify::User.new(auth_hash)
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      # user.image = auth.info.image
      # user.skip_confirmation!
      user.auth_hash = auth
      user.save
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.spotify_data"] && session['devise.spotify_data']['extra']['raw_info']
        user.email = data['email'] if user.email.blank?
      end
    end
  end
end
