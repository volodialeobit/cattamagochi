# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :omniauthable, omniauth_providers: %i[google_oauth2]

  has_one :pet, dependent: :destroy

  def self.from_omniauth(provider_data)
    User.find_or_create_by(provider: provider_data.provider, uid: provider_data.uid) do |user|
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
