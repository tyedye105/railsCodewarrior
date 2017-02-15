class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to '/sign_in'
  end
end
