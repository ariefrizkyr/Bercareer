class CompaniesController <ApplicationController
  before_action :authenticate_company!, only: [:your_job, :your_applicant]

  def index
    @companies = Company.includes(:profile)
  end

  def show
    @company = Company.find(params[:id])

    # @applied = Apply.where("job_id = ? AND student_id = ?", @job.id, current_student.id).present?
    # if current_student

    # @rating = @company.ratings
    # @hasRating = @ratings.find_by(student_id: current_student.id) if current_student
  end

  def your_job
    @jobs = current_company.jobs
  end

  def your_applicant
    @applicants = current_company.applies
  end
end
