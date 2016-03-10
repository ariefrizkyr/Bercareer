class AppliesController < ApplicationController
  before_action :authenticate_student!

  def create
    @apply = current_student.applies.create(apply_params)
    flash[:success] = "Application Success!"
    redirect_to @apply.job
  end

  private
    def apply_params
      params.require(:apply).permit(:job_id, :student_id)
    end
end
