class AppliesController < ApplicationController
  before_action :authenticate_student!

  def create
    @apply = current_student.applies.create(apply_params)

    if @apply.save
      StudentMailer.apply_created(current_student, @apply).deliver
      CompanyMailer.job_applied(current_student, @apply).deliver
      flash[:success] = "Application Success!"
      redirect_to @apply.job
    else
      flash[:error] = "You have applied to this job!"
      redirect_to @apply.job
    end
  end

  private
    def apply_params
      params.require(:apply).permit(:job_id, :student_id)
    end
end
