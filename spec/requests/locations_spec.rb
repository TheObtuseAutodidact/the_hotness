require "rails_helper"

RSpec.describe "Location posting", :type => :request do

  it "posts a new location" do
    headers = {
      "ACCEPT" => "application/json"
    }
    post "/api/v1/locations", { :location => {:long => "1234", :lat => "5678"}, :contact_info => {:emails => [{:value => "test@example.com"}]} } , format: :json#headers

    expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(:created)
  end

end
