class ViolationsController < ApplicationController
  autocomplete :violations, :address

  def index
    @violation = Violation.new
  end

  def create
    @violation = Violation.find_by(violation_params)
      render layout: false
  end

  def autocomplete_address
    @violations = Violation.order(:address).where("address LIKE ?", "#{params[:term].upcase}%").limit(10)
      respond_to do |format|
      format.html
      format.json { 
        render json: @violations.map(&:address)
      }
    end
  end

  private
  def violation_params
    params.require(:violation).permit(:address)
  end
end
