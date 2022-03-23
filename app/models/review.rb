class Review < ApplicationRecord
  belongs_to :hotel
  broadcasts_to :hotel
end
