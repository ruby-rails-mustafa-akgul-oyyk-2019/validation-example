class User < ApplicationRecord
  # Associations
  has_one :profile
  has_many :lesson

  # Validations
  validates :email,
            :first_name,
            :last_name,
            :password,
            presence: true

  validates :email,
            uniqueness: true

  validates :password,
            confirmation: true
end
