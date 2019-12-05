class Property < ApplicationRecord
    # validates :property, presence: true
    has_many :property_nests
    accepts_nested_attributes_for :property_nests,  allow_destroy: true
    validates_associated :property_nests, on: :create
end
