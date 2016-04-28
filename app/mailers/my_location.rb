class MyLocation < ApplicationMailer
  def send_location(contact, location)
    @location = location
    mail(to: contact, subject: "My Location")
  end
end
