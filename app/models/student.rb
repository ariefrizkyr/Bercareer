class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  has_one :resume
  has_many :applies
  has_many :jobs, through: :applies
  has_many :accepts
  has_many :companies, through: :accepts
  has_many :feedbacks
  has_many :reviews

  acts_as_messageable

  def mailboxer_email(object)
   return email
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nim, presence: true, numericality: true, uniqueness: true
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+\.ac.id\z/, message: 'must be an university email (user@email.ac.id)' }
end
