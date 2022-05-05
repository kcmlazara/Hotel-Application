class Hotel < ApplicationRecord
  belongs_to :country
  belongs_to :user
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :address
  validates_presence_of :price
  validates_presence_of :contact_number
  has_rich_text :description
  has_many :reviews, dependent: :destroy
  after_update :send_updated_hotel_email
  before_destroy :send_deleted_hotel_email

  def send_updated_hotel_email
    HotelsMailer.updated(self).deliver_later
  end

  def send_deleted_hotel_email
    HotelsMailer.deleted(self.name).deliver_later
  end

end