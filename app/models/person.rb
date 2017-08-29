class Person < ApplicationRecord
  validates :name, length: { minimum: 2, maximum: 25 }, presence: true
  validates :age, numericality: true
  validates :hair_color, presence: true
  validates :eye_color, presence: true
  validates :gender, presence: true
  validates :alive, presence: true
end
