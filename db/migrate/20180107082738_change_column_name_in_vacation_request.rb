class ChangeColumnNameInVacationRequest < ActiveRecord::Migration[5.1]
  def self.up
	rename_column :vacation_requests, "status ", :status
  end

  def self.down

  end
end
