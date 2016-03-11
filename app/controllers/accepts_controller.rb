class AcceptsController < ApplicationController
  before_action :authenticate_company!

  def create
    @accept = current_company.accepts.create(accept_params)
    flash[:success] = "Your candidate has been accepted!"
    redirect_to your_employee_path
  end

  private
    def accept_params
      params.require(:accept).permit(:job_id, :student_id, :company_id)
    end
end
