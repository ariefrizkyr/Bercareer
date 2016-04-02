class StudentsController < ApplicationController
  before_action :authenticate_student!, only: [:your_apply, :your_accepted_job]
  before_action :authenticate_company!, only: [:index, :show]

  def index
    @search = Student.ransack(params[:q])
    @students = @search.result.includes(:resume)
  end

  def search
    index
    render :index
  end

  def show
    @student = Student.find(params[:id])

    if @student.feedbacks.blank?
      @average_feedback = 0
    else
      @average_feedback = @student.feedbacks.average(:rating).round(2)
    end
  end

  def your_apply
    @applies = current_student.applies
  end

  def your_accepted_job
    @accepts = current_student.accepts
  end
end
