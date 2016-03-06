class Portfolio < ActiveRecord::Base
  belongs_to :resume

  validates :title, presence: true
  validates :description, presence: true
  validates :link, presence: true, url: true
end
