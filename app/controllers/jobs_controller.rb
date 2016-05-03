class JobsController < ApplicationController
  before_action :find_job, only: [:show, :edit, :update]
  before_action :authenticate_company!, except: [:index, :show, :search]

  def index
    @search = Job.ransack(params[:q])
    @jobs = @search.result.where('active = true').order("deadline ASC").paginate(page: params[:page], per_page: 20)
  end

  def search
    index
    render :index
  end

  def show

  end

  def new
    @job = current_company.jobs.build
  end

  def create
    @job = current_company.jobs.build(job_params)

    if @job.save
      CompanyMailer.job_created(current_company, @job).deliver
      flash[:success] = "Job created!"
      redirect_to @job
    else
      flash[:error] = "Error occured!"
      render :new
    end
  end

  def edit

  end

  def update
    if @job.update_attributes(job_params)
      flash[:success] = "Job updated!"
      redirect_to @job
    else
      flash[:error] = "Error occured!"
      render :edit
    end
  end

  private
    def find_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:job_title, :job_type, :address, :city, :province,
                                  :country, :short_desc, :job_desc, :requirement,
                                  :benefit, :is_paid, :salary, :salary_interval,
                                  :start_period, :end_period, :start_work, :end_work,
                                  :deadline, :urgency, :difficulties, :main_category,
                                  :second_category, :active)
    end
end
