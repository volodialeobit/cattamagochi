class Pet < ApplicationRecord
  belongs_to :user

  has_one :pet_state, dependent: :destroy
end
