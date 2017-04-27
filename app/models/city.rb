class City < ApplicationRecord
  belongs_to :user

  # validates :user, presence: true
  # ^ indicates a city can only be unique to a user, commenting out for now
end
