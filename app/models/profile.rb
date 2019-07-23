class Profile < ApplicationRecord
  # Associations
  belongs_to :user

  # Enums
  enum gender: { male: 0,
                 female: 1 }

  # Validations
  validates :bio,
            length: { maximum: 250 }

  validates :age,
            numericality: { greater_than_or_equal_to: 18,
                            less_than_or_equal_to: 99 }
end
