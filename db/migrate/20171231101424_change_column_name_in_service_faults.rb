class ChangeColumnNameInServiceFaults < ActiveRecord::Migration[5.1]
  def self.up
	rename_column :service_faults, :service_id, :service_center_id
  end

  def self.down

  end
end
