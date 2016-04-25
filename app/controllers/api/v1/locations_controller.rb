class Api::V1::LocationsController < ApplicationController
  respond_to :json
  def index
    respond_with Location.all
  end

  def create
    # binding.pry
    render json: Location.create(location_params)

    # if location.save!
    #   # send message
    # end  # perhaps else error message to sender
  end


  private

  def location_params
    params.require(:location).permit(:long, :lat)
  end
end
