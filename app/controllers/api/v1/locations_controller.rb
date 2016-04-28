class Api::V1::LocationsController < ApplicationController
  respond_to :json
  def index
    respond_with Location.all
  end

  def create
    location = Location.new(location_params)
    if location.save && has_email? # has_email? should be checked on phoneside
      MyLocation.send_location(email_params, location_params).deliver_now
    end
    render json: location, status: 201
  end


  private

  def location_params
    params.require(:location).permit(:long, :lat)
  end

  def email_params
    params['contact_info']['emails'].first['value']
  end

  def has_email?
    params['contact_info']['emails']
  end

end
