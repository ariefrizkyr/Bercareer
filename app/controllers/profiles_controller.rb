class ProfilesController < ApplicationController
  before_action :authenticate_company!, except: [:index]
  before_action :find_profile, only: [:edit, :update, :only_current_student]
  before_action :only_current_company, only: [:edit, :update]

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_company.build_profile(profile_params)

    if @profile.save
      flash[:success] = "Profile created!"
      redirect_to company_path(params[:company_id])
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @profile.update_attributes(profile_params)
      flash[:success] = "Profile updated!"
      redirect_to company_path(current_company)
    else
      render 'edit'
    end
  end

  private
    def find_profile
      @company = Company.find(params[:company_id])
      @profile = @company.profile
    end

    def profile_params
      params.require(:profile).permit(:logo, :address, :city, :province, :country,
                                      :website, :field, :description)
    end

    def only_current_company
      unless @profile.company_id == current_company.id
      flash[:notice] = 'Access denied as you are not owner of this Profile'
      redirect_to root_path
     end
    end
end
