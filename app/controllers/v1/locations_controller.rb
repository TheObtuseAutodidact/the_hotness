class Api::V1::LocationsController < ApplicationController
  respond_to :json
  def index
    respond_with Location.all
  end

  def create

    render json: Location.create(location_params) # why can't I simply use respond_with ?

    # if location.save!
    #   # send message
    # end  # perhaps else error message to sender
  end


  private

  def location_params
    params.(:location).permit(:long, :lat)
  end
end
