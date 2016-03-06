class Profile < ActiveRecord::Base
  belongs_to :company

  validates :address, presence: true
  validates :city, presence: true
  validates :province, presence: true
  validates :country, presence: true
  validates :website, presence: true, url: true
  validates :field, presence: true
  validates :description, presence: true
end
