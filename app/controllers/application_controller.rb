class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
    moncompte_path
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:username, :first_name, :last_name, :email, :password, :password_confirmation)}
  end

  protected

  def must_admin!
    if user_signed_in?
      if !current_user.is_admin?
        redirect_to moncompte_path, :alert => "Vous n'êtes pas autorisé à consulter cette page."
      end
    end
  end

  def must_user!
    if !user_signed_in?
      redirect_to new_user_session_path, :alert => "vous n'êtes pas autorisé à consulter cette page. Merci de vous connecter"
    end
  end

end
