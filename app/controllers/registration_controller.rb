class RegistrationsController < Devise::RegistrationsController
<<<<<<< HEAD

	

    

    private
   
    def sign_up_params
      params.require(:user).permit(:firstname, :lastname, :email, :username, :country, :dob, :password, :password_confirmation)
    end
   
    def account_update_params
      params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :current_password)
    end

=======
  private
 
  def sign_up_params
    params.require(:user).permit(:firstname, :lastname, :email, :username, :country, :dob, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :current_password)
  end
>>>>>>> eef196fb0ec4306f7ef0112b9f194a01eeefcfac
end