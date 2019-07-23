class User < ApplicationRecord
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
