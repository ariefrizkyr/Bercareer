class AppliesController < ApplicationController
  before_action :authenticate_student!

  def create
    @apply = current_student.applies.create(apply_params)
    redirect_to @apply.job, notice: "Application Success!"
  end

  def your_applications
    @applies = current_student.applies
  end

  private
    def apply_params
      params.require(:apply).permit(:job_id)
    end
end
