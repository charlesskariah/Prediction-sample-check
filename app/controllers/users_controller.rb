class UsersController < ApplicationController
   before_filter :authenticate_user!

  def edit
    @user = current_user
  end

  def update
    @user = User.find(current_user.id)
    if @user.update_without_password(user_params)
      # Sign in the user by passing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to controller: 'leagues', action: 'index'
      flash[:notice] = 'Updated Preferences Successfully'
    else
      flash[:notice] = "Invalid Entry"
      render 'edit'
    end
  end

  private

  def user_params
    # NOTE: Using `strong_parameters` gem
    params.required(:user).permit(:firstname, :lastname, :username, :country, preference_attributes: [:id, :user_id, :time_zone])
  end
end
