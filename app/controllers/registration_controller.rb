class RegistrationsController < Devise::RegistrationsController

	before_filter :one

	def one
		binding.pry
	end
  private
 
  def sign_up_params
    params.require(:user).permit(:firstname, :lastname, :email, :username, :country, :dob, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :current_password)
  end
end