class Country < ApplicationRecord
    validates :name, uniqueness: true
    has_many :hotels, dependent: :destroy
    has_many :tours, inverse_of: :country
    has_many :cars
    accepts_nested_attributes_for :tours, reject_if: :all_blank, allow_destroy: true
end
