class City < ApplicationRecord
  belongs_to :user

  # check if name attribute passed when calling create
  validates :name, presence: true

  # validates :user, presence: true
  # ^ indicates a city can only be unique to a user, commenting out for now
end
