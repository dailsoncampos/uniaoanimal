class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
	rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|a| a.permit(:name, :phone, :identify, :cpf, :street, :number, :sector, :city, :zip, :referency_point, :residence, :fenced_plot, :password, :remember_me, :email)}
    devise_parameter_sanitizer.permit(:sign_in) {|a| a.permit(:password, :remember_me, :email)}
    devise_parameter_sanitizer.permit(:account_update) {|a| a.permit(:name, :phone, :identify, :cpf, :street, :number, :sector, :city, :zip, :referency_point, :residence, :fenced_plot, :password, :remember_me, :email)}
  end
end
