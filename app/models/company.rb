class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  has_one :profile
  has_many :jobs
  has_many :applies, through: :jobs
  has_many :accepts
  has_many :students, through: :accepts
  has_many :feedbacks
  has_many :reviews

  acts_as_messageable

  def mailboxer_email(object)
   return email
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :company_name, presence: true
  validates :phone_number, presence: true, numericality: true, uniqueness: true

  def to_param
   "#{id}-#{company_name.parameterize}"
  end
end
