class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_many :jobs
  
  validates :full_name, presence: true
  validates :company_name, presence: true
  validates :phone_number, presence: true, numericality: true
end
