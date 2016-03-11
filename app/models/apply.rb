class Apply < ActiveRecord::Base
  belongs_to :student
  belongs_to :job

  validates :student_id, presence: true
  validates :job_id, presence: true, uniqueness: true
end
