class AcceptsController < ApplicationController
  before_action :authenticate_company!

  def create
    @accept = current_company.accepts.create(accept_params)

    if @accept.save
      CompanyMailer.accept_created(current_company, @accept).deliver
      StudentMailer.job_accepted(current_company, @accept).deliver
      flash[:success] = "Your candidate has been accepted!"
      redirect_to your_employee_path
    else
      flash[:error] = "You have accepted this candidate!"
      redirect_to your_employee_path
    end
  end

  private
    def accept_params
      params.require(:accept).permit(:job_id, :student_id, :company_id)
    end
end
