class Supply < ApplicationRecord
  belongs_to :supplier
  has_and_belongs_to_many :warehouse
end
