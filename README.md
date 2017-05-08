# The Hotness

The Hotness is a simple Rails api written to interface with my first PhoneGap app:
myApp: https://github.com/TheObtuseAutodidact/myApp

the rails api receives contact(currently only a contact's email) and a user's location data from mobile device/app
and uses those to send an email to the contact containing a link to a google map
showing the sender's location.
It does not record any info about sender or receiver but does record locations as long/lat coordinates.
Possible future iteration would use long and lat to cross reference against google's location ids


## Usage

After bundle and db:setup, the app will require a sendgrid account/keys

A deployed version of the app is currently available at:
https://rocky-peak-36243.herokuapp.com/api/v1/locations
but there really isn't much to see there. It's just a simple backend for the PhoneGap app above. 
