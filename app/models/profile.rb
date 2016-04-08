class Profile < ActiveRecord::Base
  belongs_to :company

  has_attached_file :logo, styles: { medium: "300x300>", small: "150x150>", thumb: "100x100>" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

  validates :address, presence: true
  validates :city, presence: true
  validates :province, presence: true
  validates :country, presence: true
  validates :website, presence: true, url: true
  validates :field, presence: true
  validates :description, presence: true
end
