class Review < ApplicationRecord
  belongs_to :hotel
  belongs_to :user
  broadcasts_to :hotel
end
