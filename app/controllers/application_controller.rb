class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  before_action :set_current_cart
  before_action :set_locale

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, alert: exception.message
  end

  private

  def set_current_cart
    session[:cart_id] ||= Cart.create.id
  end

  def authorize_admin
    redirect_to :root unless @current_user.role == 'admin'
    # redirect_to :root, :status => 401 unless current_user.admin
    # redirects to previous page
  end

  def set_locale
    # I18n.locale = params[:locale] if params[:locale].present?
    # I18n.locale = params[:locale] || I18n.default_locale
    I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end

end
