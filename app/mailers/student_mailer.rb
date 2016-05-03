class StudentMailer < ActionMailer::Base

  def apply_created(current_student, apply)

    @current_student = current_student
    @apply = apply

    mail(to: current_student.email,
         from: "Bercareer <no-reply@bercareer.com>",
         subject: "[Bercareer] You've Just Applied to a Job"
        )
  end

  def job_accepted(current_company, accept)
    @current_company = current_company
    @accept = accept

    mail(to: accept.student.email,
         from: "Bercareer <no-reply@bercareer.com>",
         subject: "[Bercareer] Good News! You've Just Accepted!"
        )
  end
end
