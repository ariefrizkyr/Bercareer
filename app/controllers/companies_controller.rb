class CompaniesController <ApplicationController
  before_action :authenticate_company!, only: [:your_job, :your_applicant]
  before_action :only_current_company, only: [:show]

  def index
    @search = Company.ransack(params[:q])
    @companies = @search.result.includes(:profile)
  end

  def search
    index
    render :index
  end

  def show
    @company = Company.find(params[:id])

    if @company.reviews.blank?
     @average_review = 0
    else
     @average_review = @company.reviews.average(:rating).round(2)
    end
  end

  def your_job
    @jobs = current_company.jobs
  end

  def your_applicant
    @applicants = current_company.applies
  end

  def your_employee
    @employees = current_company.accepts
  end

  private
    def only_current_company
      @company = Company.find(params[:id])
      @profile = @company.profile
    end
end
