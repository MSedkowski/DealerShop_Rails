class SuppliesWarehouse < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :supply
  accepts_nested_attributes_for :warehouse
end
