class ViolationsController < ApplicationController

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

  private
  def violation_params
    params.require(:violation).permit(:street_num, :street_name, :county)
  end
end
