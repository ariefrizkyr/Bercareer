class CompaniesController <ApplicationController
  def index
    @companies = Company.includes(:profile)
  end

  def show
    @company = Company.find(params[:id])
  end
end
