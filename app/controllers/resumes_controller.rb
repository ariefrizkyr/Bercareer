class ResumesController < ApplicationController
  before_action :find_resume, only: [:show, :edit, :update]
  before_action :authenticate_student!, except: [:index, :show]
  before_action :only_current_student, except: [:index, :show]

  def index
    @resume = Resume.all.order("Created_at DESC")
  end

  def show

  end

  def new
    @resume = current_student.build_resume
  end

  def create
    @resume = current_student.build_resume(resume_params)

    if @resume.save
      redirect_to student_resume_path(current_student), success: "Resume created!"
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @resume.update(resume_params)
      redirect_to student_resume_path(current_student), success: "Resume updated!"
    else
      render 'edit'
    end
  end

  private
    def find_resume
      @resume = Resume.find(params[:student_id])
    end

    def resume_params
      params.require(:resume).permit(:gender, :birth_date, :phone_number, :address,
                                     :city, :province, :country, :postal_code, :university,
                                     :major, :level, :grad_year, :gpa, :facebook_url,
                                     :twitter_url, :linkedin_url, :googleplus_url,
                                     skill_list: [], language_list: [])
    end

    def only_current_student
      @student = Student.find(params[:student_id])
      redirect_to root_path unless @student = current_student
    end
end
