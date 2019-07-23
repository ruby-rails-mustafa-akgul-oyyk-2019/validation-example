class Lesson < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates :title,
            presence: true

  validates :max_person,
            numericality: { greater_than_or_equal_to: 10,
                            less_than_or_equal_to: 40 }
end
