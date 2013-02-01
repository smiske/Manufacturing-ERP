class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :check_controller

  def check_controller

    if devise_controller?
      "login"
    elsif controller_name == 'tax_invoices' && id ==
      "pdf"
     else
     "application"
    end

  end
end
