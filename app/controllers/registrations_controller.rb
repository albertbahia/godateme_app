class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :gender, :age, :interest_category, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :gender, :age, :photo, :interest_category, :password, :password_confirmation, :current_password)
  end
end
