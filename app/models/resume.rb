class Resume < ActiveRecord::Base

  belongs_to :student
  has_many :experiences
  has_many :portfolios

  accepts_nested_attributes_for :experiences, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :portfolios, reject_if: :all_blank, allow_destroy: true
  acts_as_taggable_on :skills, :languages

  has_attached_file :photo, styles: { medium: "300x300>", small: "150x150>", thumb: "100x100>", profile: "250x250#" }
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
  validates :facebook_url, url: true, allow_blank: true
  validates :twitter_url, url: true, allow_blank: true
  validates :linkedin_url, url: true, allow_blank: true
  validates :googleplus_url, url: true, allow_blank: true
end
