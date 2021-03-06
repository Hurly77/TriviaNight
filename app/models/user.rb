class User < ApplicationRecord
  has_many :games
  has_many :categories, through: :games
  has_many :rounds
  has_many :questions, through: :rounds
  has_many :likes

  devise :database_authenticatable, :registerable,
          :recoverable, :validatable,
          :omniauthable, omniauth_providers: [:facebook]

  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |user|
      user.name = provider_data.info.name
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end
end