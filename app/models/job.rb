class Job < ActiveRecord::Base
  belongs_to :company
  has_many :applies
  has_many :students, through: :applies
  has_many :accepts

  validates :job_title, presence: true
  validates :job_type, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :province, presence: true
  validates :country, presence: true
  validates :short_desc, presence: true
  validates :job_desc, presence: true
  validates :requirement, presence: true
  validates :benefit, presence: true
  validates :salary, presence: true, allow_blank: true
  validates :salary_interval, presence: true, allow_blank: true
  validates :start_period, presence: true
  validates :end_period, presence: true
  validates :start_work, presence: true
  validates :end_work, presence: true
  validates :deadline, presence: true
  validates :urgency, presence: true
  validates :difficulties, presence: true
  validates :main_category, presence: true
  validates :second_category, presence: true, allow_blank: true
end
