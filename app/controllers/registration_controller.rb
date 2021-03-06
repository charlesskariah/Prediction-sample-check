class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(
    :firstname, :lastname,
    :email, :username, :country, :dob,
    :password, :password_confirmation, :user_agreement
    )
  end

  def account_update_params
    params.require(:user).permit(
     :firstname,
     :lastname,
     :email,
     :password,
     :password_confirmation,
     :current_password
      )
  end
end
