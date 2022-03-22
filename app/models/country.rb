class Country < ApplicationRecord
    validates_presence_of :name
    has_many :hotels, dependent: :destroy
end
