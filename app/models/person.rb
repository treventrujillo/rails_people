class Person < ApplicationRecord
  validates :name, length: {
     minimum: 2,
     maximum: 25,
     too_short: "must have at least %{count} words",
     too_long: "must have at most %{count} words"
     },
     presence: true
  validates :age, numericality: true
  validates :hair_color, presence: true
  validates :eye_color, presence: true
  validates :gender, presence: true
  validates :alive, inclusion: { in: [true, false] }
end
