class ResumesController < ApplicationController
  before_action :authenticate_student!
  before_action :find_resume, only: [:edit, :update, :only_current_student]
  before_action :only_current_student, only: [:edit, :update]

  def new
    @resume = Resume.new
  end

  def create
    @resume = current_student.build_resume(resume_params)

    if @resume.save
      flash[:success] = "Resume created!"
      redirect_to student_path(params[:student_id])
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @resume.update_attributes(resume_params)
      flash[:success] = "Resume updated!"
      redirect_to student_path(current_student)
    else
      render :edit
    end
  end

  private
    def find_resume
      @student = Student.find(params[:student_id])
      @resume = @student.resume
    end

    def resume_params
      params.require(:resume).permit(:photo, :gender, :birth_date, :phone_number, :address,
                                     :city, :province, :country, :postal_code, :university,
                                     :major, :level, :grad_year, :gpa, :facebook_url,
                                     :twitter_url, :linkedin_url, :googleplus_url,
                                     skill_list:[], language_list:[], experiences_attributes: [:id,
                                     :company_name, :position, :start_work, :end_work, :is_current,
                                     :description, :_destroy], portfolios_attributes: [:id, :title,
                                     :description, :link, :_destroy])
    end

    def only_current_student
      unless @resume.student_id == current_student.id
      redirect_to root_path, notice: "Access denied as you are not owner of this Resume"
     end
    end
end
