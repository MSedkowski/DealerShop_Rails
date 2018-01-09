class ServiceCenter < ApplicationRecord
  self.table_name = "service_center"
  belongs_to :client
  belongs_to :employee
  has_many :service_faults, dependent: :destroy
  has_many :faults, through: :service_faults
  accepts_nested_attributes_for :service_faults, reject_if: :all_blank, allow_destroy: true

  def close
    service_center = ServiceCenter.find(params[:id])
    service_center.status = 'Zakończono'
    service_center.end_date = Date.today().to_s
    service_center.save!
    redirect_to service_centers_path
  end
end
