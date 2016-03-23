class FeedbacksController < ApplicationController
  before_action :authenticate_company!
  before_action :find_student
  before_action :find_feedback, only: [:edit, :update, :destroy]

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)

    if @feedback.save
      flash[:success] = "Feedback created!"
      redirect_to student_path(@student)
    else
      flash[:error] = "Error occured!"
      render :new
    end
  end

  def edit

  end

  def update
    if @feedback.update(feedback_params)
      flash[:success] = "Feedback updated!"
      redirect_to student_path(@student)
    else
      flash[:error] = "Error occured!"
      render :edit
    end
  end

  def destroy
    @feedback.destroy
    flash[:success] = "Feedback deleted!"
    redirect_to student_path(@student)
  end

  private
    def find_feedback
      @feedback = Feedback.find(params[:id])
    end

    def find_student
      @student = Student.find(params[:student_id])
    end

    def feedback_params
      params.require(:feedback).permit(:rating, :comment, :student_id, :company_id)
    end
end
