class RegistrationsController < Devise::RegistrationsController  
  private
  
  def sign_up_params
    params.require(:user).permit( :email, :password,:password_confirmation,
	company_attributes:[:company_name])
  end
 
  def account_update_params
    params.require(:user).permit(:email,:password, :password_confirmation, :current_password, 
	company_attributes: [:id,:company_name])
  end
end