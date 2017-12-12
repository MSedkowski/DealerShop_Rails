class Supply < ApplicationRecord
  belongs_to :supplier
  has_many :supplies_elements
end
