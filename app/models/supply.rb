class Supply < ActiveRecord::Base
  belongs_to :supplier
  has_many :supplies_warehouses
  has_many :warehouses, through: :supplies_warehouses
  accepts_nested_attributes_for :supplies_warehouses, reject_if: :all_blank
end
