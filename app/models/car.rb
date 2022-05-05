class Car < ApplicationRecord
  belongs_to :country
  acts_as_list
  validates_presence_of :name
  validates_presence_of :country_id
  belongs_to :user
end
