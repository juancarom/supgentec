class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
        flash[:error] = "Usted no puede ingresar a esta pagina"
        redirect_to root_url
  end
  protect_from_forgery
end
