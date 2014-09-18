class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model
    # (e.g. app/models/user.rb)
    # return render plain: request.env["omniauth.auth"].class
    @user = User.from_omniauth(request.env["omniauth.auth"])
    # if !@user
    #   flash[:alert] = "Email already taken"
    #   return redirect_to new_user_session_path
    # end
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication # this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
    else
      session['devise.facebook_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end
