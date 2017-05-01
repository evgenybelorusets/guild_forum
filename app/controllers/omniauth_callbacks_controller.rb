class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def bnet
    p request.env["omniauth.auth"]

    @user = User.from_omniauth(request.env["omniauth.auth"])
    @user.save!

    if @user.persisted?
      sign_in_and_redirect @user
    else
      session["devise.bnet_data"] = request.env["omniauth.auth"]
      redirect_to root_path
    end
  end

  def failure
    redirect_to root_path
  end
end