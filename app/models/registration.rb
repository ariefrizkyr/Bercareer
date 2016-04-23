class Registration < MailForm::Base
  attribute :first_name,  :validate => true
  attribute :last_name,   :validate => true
  attribute :nim,         :validate => true, numericality: true
  attribute :student_id,  :attachment => true
  attribute :email,       :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :password,    :validate => true
  attribute :nickname,    :captcha  => true

  def headers
    {
      :subject => "[Bercareer Manual Registration] New Applicant. Please Respond",
      :to => "hello@bercareer.com",
      :from => %("#{first_name}" <#{email}>)
    }
  end
end
