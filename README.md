# README

# Nomster

### REST API / AWS / Ruby - Ruby on Rails / postgreSQL

Ruby on Rails application that allows users to create accounts and add their favorite restaurants or businesses called "places". They can upload photos and leave comments or ratings on any users place. Similar to Yelp.

Top navigation and footer were added using the Bootstrap 4 gem. JQuery was also added during installation to prevent dependency issues.  The background pattern was borrowed from www.subtlepatterns.com.

www.fontsquirrel was the source for the fonts and www.colorpicker.com for the colors.

To improve the layout of the application once many "places" were added, "Pagination" gem was implemented to archive the places in different pages and allow users to jump to the desired page number.

All icons were provided by Font awesome gem such as the plus sign next to the add place link in the top navigation bar.

Devise gem was used for user authentication with custom flash alerts from Bootstrap for invalid user entries. 

Actions in the controller allow logged in users to create, edit, and delete places they created. Users who did not create the place do not see the edit or delete buttons.

The "geocoder gem" was added to convert an address into longitude and latitude. This was integrated with the Google Geocoder API to allow a map to be displayed with the location of the place that was added by the user. The  API key was stored with the "figaro gem" for security and to retrieve the API key from an environment variable (ENV).

"Carrierwave gem" was used as an uploader library to allow users to upload images to the places they are creating. The images are stored with Amazon S3 (AWS) using the figaro gem along with "fog-aws gem" to facilitate secure communication between AWS and the application when a secret key is needed.

When a comment is added to the place an user created, an email is sent to the creator of the place. This was accomplished with the Ruby functionality _ActionMailer_ in local host. In Heroku where the application is hosted live, _SendGrid_ was used to achieve the same.

Users are also able to give a rating to other users places. There is a dashboard for each user with their profile. The profile displays info such as how long they have been a member, how many 5 star ratings they have given while filtering out lower ratings. It also displays the places they have created and the comments they have left on other places.
