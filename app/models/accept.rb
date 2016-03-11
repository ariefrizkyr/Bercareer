class Accept < ActiveRecord::Base
  belongs_to :job
  belongs_to :student
  belongs_to :company

  validates :job_id, presence: true, uniqueness: true
  validates :company_id, presence: true
  validates :student_id, presence: true
end
