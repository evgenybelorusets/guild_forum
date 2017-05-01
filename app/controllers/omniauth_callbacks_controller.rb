class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def bnet
    p request.env["omniauth.auth"]

    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end

  def failure
    redirect_to root_path
  end
end