class ViolationsController < ApplicationController
  autocomplete :violation, :address

  def index
    @violation = Violation.new
  end

  def create
    @violation = Violation.find_by(violation_params)
    if @violation
      render layout: false
    else
      render :index
    end
  end

  def search
    @violation = Violation.find_by(violation_params)
    if @violation
      render layout: false
    else
      render :index
    end
  end 


  private
  def violation_params
    params.require(:violation).permit(:address)
  end
end
