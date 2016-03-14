class User < ActiveRecord::Base
  extend FriendlyId

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable,
        :omniauthable, :omniauth_providers => [:bitbucket]

  friendly_id :name, use: :slugged

  has_many :repositories

  def username
    name || email
  end

  def avatar_url
    gravatar_id = Digest::MD5.hexdigest(email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      # user.image = auth.info.image # assuming the user model has an image
    end
  end

  def sync_repositories
    RepositorySync.fake_sync(self)
  end

end
