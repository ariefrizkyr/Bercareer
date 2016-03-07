class JobsController < ApplicationController
  before_action :find_job, only: [:show, :edit, :update]
  before_action :authenticate_company!, except: [:show]

  def index
    @jobs = current_company.jobs
  end

  def show

  end

  def new
    @job = current_company.jobs.build
  end

  def create
    @job = current_company.jobs.build(job_params)

    if @job.save
      redirect_to @job, notice: "Job created!"
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @job.update
      redirect_to @job, notice: "Job updated!"
    else
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
