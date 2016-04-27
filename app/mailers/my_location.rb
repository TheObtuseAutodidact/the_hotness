class MyLocation < ApplicationMailer
  def send_location(contact, location)
    @location = location
    mail(to: contact, subject: "my location goes here")
  end
end
