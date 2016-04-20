class PagesController < ApplicationController
  def index
    @search = Job.ransack(params[:q])
    @jobs = @search.result.where('active = true').order("deadline ASC")
  end

  def company_home

  end

  def contact

  end
end
