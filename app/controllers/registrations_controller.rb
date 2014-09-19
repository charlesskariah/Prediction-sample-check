class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(
    :firstname, :lastname,
    :email, :username, :country,
    :password, :password_confirmation, :user_agreement,  preferences_attributes: [:time_zone]
    )
  end

  def account_update_params
    params.require(:user).permit(
     :firstname,
     :lastname,
     :username,
     :country,
     :password,
     :password_confirmation,
     :current_password,
      preferences_attributes: [:time_zone]
      )
  end

end
