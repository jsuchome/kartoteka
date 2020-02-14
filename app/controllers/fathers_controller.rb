class FathersController < ApplicationController
  def index
    @fathers = Item.order(:PRIJMENI).where("POHL='M' AND PRIJMENI like ?", "#{params[:term]}%")
    render json: @fathers.map(&:PRIJMENI).uniq
  end
end
