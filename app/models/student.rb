class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :resume
  has_many :applies
  has_many :jobs, through: :applies
  has_many :accepts
  has_many :companies, through: :accepts

  validates :full_name, presence: true
  validates :nim, presence: true, numericality: true, uniqueness: true
  validates :email, presence: true, format: { with: /\b[A-Z0-9._%a-z\-]+\.ac.id\z/, message: 'must be university email' }
end
