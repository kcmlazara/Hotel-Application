class Tour < ApplicationRecord
  belongs_to :country
  validates_presence_of :name
end
