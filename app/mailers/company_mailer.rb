class CompanyMailer < ActionMailer::Base
  def job_created(current_company, job)

    @current_company = current_company
    @job = job

    mail(to: current_company.email,
         from: "Bercareer <no-reply@bercareer.com>",
         subject: "[Bercareer] You've Just Posted a New Job"
        )
  end

  def job_applied(current_student, apply)

    @current_student = current_student
    @apply = apply
    mail(to: apply.job.company.email,
         from: "Bercareer <no-reply@bercareer.com>",
         subject: "[Bercareer] New Applicant to Your Job"
        )
  end
end
