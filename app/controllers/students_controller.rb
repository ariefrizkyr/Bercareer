class StudentsController < ApplicationController
  before_action :only_current_student, only: [:show]
  before_action :authenticate_student!, only: [:your_apply, :your_accepted_job]

  def index
    @students = Student.includes(:resume)
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

  private
    def only_current_student
      @student = Student.find(params[:id])
      @resume = @student.resume
    end
end
