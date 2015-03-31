class ViolationsController < ApplicationController
  autocomplete :violations, :address

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

  def autocomplete_address
    @violations = Violation.order(:address).where("address LIKE ?", "%#{params[:term]}%")
      respond_to do |format|
      format.html
      format.json { 
        render json: @violations.map(&:address)
      }
    end
  end
  # def search
  #   @violation = Violation.find_by(violation_params)
  #   if @violation
  #     render layout: false
  #   else
  #     render :index
  #   end
  # end 


  private
  def violation_params
    params.require(:violation).permit(:address)
  end
end
