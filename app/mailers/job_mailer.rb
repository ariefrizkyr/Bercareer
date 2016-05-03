class JobMailer < ActionMailer::Base
  def job_created(current_company, job)

    @current_company = current_company
    @job = job

    mail(to:current_company.email,
         from: "Bercareer <no-reply@bercareer.com>",
         subject: "[Bercareer] You've Just Posted a New Job"
        )
  end
end
