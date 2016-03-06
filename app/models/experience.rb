class Experience < ActiveRecord::Base
  belongs_to :resume

  validates :company_name, presence: true
  validates :position, presence: true
  validates :start_work, presence: true
  validates :description, presence: true
end
