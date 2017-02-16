class ProfilesController < ApplicationController
  def show
    @profile = current_user
  end

  def new
    @user = current_user
    @profile = Profile.new
  end

  def create
    @user = current_user
    binding.pry
    @profile = @user.profile.new(profile_params)
    if @user.save
      flash[:notice] = "Profile Created!"
      redirect_to profile_path(@profile)
    else
      flash[:alert] = "Profile not saved"
      render :new
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      flash[:notice] = 'Successfully Updated!'
      redirect_to profile_path(@profile)
    else
      flash[:alert] = 'Updated Failure!'
      render :edit
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to '/'
  end

private
  def profile_params
    params.require(:profile).permit(:name, :username)
  end
end
