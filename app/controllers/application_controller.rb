class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def valid_address?
    !!@violation
  end
  helper_method :valid_address?


  # def set_blank_address(violation)
  #   violation = Violation.new(:total => 0, :address => "There are no tickets associated with this address." )
  # end   
  # helper_method :set_blank_address

end