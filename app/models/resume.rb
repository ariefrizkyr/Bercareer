class Resume < ActiveRecord::Base

  belongs_to :student

  acts_as_taggable_on :skills, :languages

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  validates :gender, presence: true
  validates :birth_date, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :province, presence: true
  validates :country, presence: true
  validates :postal_code, presence: true
  validates :university, presence: true
  validates :major, presence: true
  validates :level, presence: true
  validates :grad_year, presence: true
  validates :gpa, presence: true
  validates :skill_list, presence: true
  validates :language_list, presence: true
  validates :facebook_url, url: true
  validates :twitter_url, url: true
  validates :linkedin_url, url: true
  validates :googleplus_url, url: true
end
