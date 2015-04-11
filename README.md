[![Code Climate](https://codeclimate.com/github/ktravers/should-i-park-here/badges/gpa.svg)](https://codeclimate.com/github/ktravers/should-i-park-here)

# Know Parking NYC

## Description

Know Parking NYC uses [historical parking ticket violation statistics](https://data.cityofnewyork.us/City-Government/Parking-Violations-Issued-Fiscal-Year-2014-August-/jt7v-77mi?) to calculate the risk of getting a parking ticket at any given address in New York City. Users enter a street address, and KnowParking displays the total tickets issued at that spot last year and whether that was higher or lower than the average across the city. Users can also send themselves an SMS reminder to move their car from that parking spot before a specific date/time.


## Features

* Parking ticket violation data parsed from [NYC Open Data Socrata API](http://dev.socrata.com/foundry/#/data.cityofnewyork.us/jt7v-77mi)
* Utilizes [Twitter REST APIs](https://dev.twitter.com/rest/public) to display 311 notifications in real time.
* Integrates [Twilio](https://www.twilio.com/blog/2014/02/twilio-on-rails-integrating-twilio-with-your-rails-4-app.html) for SMS push notifications
* Front-end styling with jQuery, CSS, and SASS


### Development/Contribution

Know Parking NYC is an ongoing work-in-progress. Please contribute by forking then submitting a pull request.

### Future

* Add single-click geolocation
* Create robust SMS scheduler
* Enhance mobile styling

### Authors

Team Know Parking NYC is [Kate Travers](https://github.com/ktravers), [Eric Fries](https://github.com/EricFries), and [Holden Steinberg](https://github.com/holdicon).

## License

Know Parking NYC is MIT Licensed. See LICENSE for details.