class MyLocationController < ApplicationController
  def create
    MyLocation.send_location(params[:email]).deliver_now
    redirect_to locations_path
  end
end
