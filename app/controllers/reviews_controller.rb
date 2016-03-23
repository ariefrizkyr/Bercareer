class ReviewsController < ApplicationController
  before_action :authenticate_student!
  before_action :find_company
  before_action :find_review, only: [:edit, :update, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      flash[:success] = "Review created!"
      redirect_to company_path(@company)
    else
      flash[:error] = "Error occured!"
      render :new
    end
  end

  def edit

  end

  def update
    if @review.update(review_params)
      flash[:success] = "Review updated!"
      redirect_to company_path(@company)
    else
      flash[:error] = "Error occured!"
      render :edit
    end
  end

  def destroy
    @review.destroy
    flash[:success] = "Review deleted!"
    redirect_to company_path(@company)
  end

  private
    def find_review
      @review = Review.find(params[:id])
    end

    def find_company
      @company = Company.find(params[:company_id])
    end

    def review_params
      params.require(:review).permit(:rating, :comment, :student_id, :company_id)
    end
end
