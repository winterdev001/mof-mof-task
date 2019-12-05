class PropertyNest < ApplicationRecord
  belongs_to :property, optional: true
end
