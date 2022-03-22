class Hotel < ApplicationRecord
  belongs_to :country
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :address
  validates_presence_of :price
  validates_presence_of :contact_number
  has_rich_text :description
  has_many :reviews, dependent: :destroy
end
