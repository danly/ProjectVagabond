#Vagabond

A travel-writing platform, with city-specific travel “logs”.

### Sprint 1. (Basic Auth & Profiles)


A user can…

* go to “/” and see a basic splash page
  * the name of the website
  * and links to “login” and “signup”
* login
* sign-up
* view their public profile (redirected after login)
  * see their name, current_city, and join date
* see the site header on every page
  * see “logout” if they’re logged in
  * see “login” and “sign up” if they’re logged out
* update their profile
  * change their name + city
* see the titles of all the log-posts they’ve contributed (pre-seeded)
  * link the title to the log-post
* view individual log-posts(author, title, body)



#### Bonuses
A user can…

* Click a “post” button in the navbar
    * redirect to the new log-post form
    * pre-populate the form with the current cities#show page
    * OR pre-populate the form with the user’s current_city
* See a “default” profile-photo on their profile page
    * add a real photo → consider using gravatar
    * edit their photo
    * see their photo next to individual log-posts

---

### Sprint 2. (CRUD)

A user can…

* view the “San Francisco” homepage (“/cities/1”)
    * including the site-header
    * and the name of the city
    * and an iconic photo
* view a list of log-posts on the San Francisco Homepage
    * sort by newest first
    * link the title to the log-post
* create a new log-post for San Francisco
* click “edit” on ANY individual post, and be redirected to the edit form
* click “delete” on ANY individual post
    * see a pop-up that says: “Are you sure you want to delete #{ title }?”

#### Bonuses

A user can…

* on a city homepage...
    * see titles truncated to 100 characters max
    * see log-post bodies truncated to 1000 characters max
    * see only the 10 newest posts
    * see a relative published-date, e.g. “2 days ago”

---

### Sprint 3. (Validations & Authorization)

A user can…

* view the “London” homepage
* view the “Gibraltar” homepage
* view a list of all cities
* see a google map centered on the correct city for a given homepage
* select either “London” or “Gibraltar” or “San Francisco” when they create a log-post (use a dropdown menu)
* verify that their log-post is published on the correct homepage
* A user MUST be logged in to:
    * see ANYTHING other than the splash page / login / signup
    * create/update/destroy resources
    * and may only edit/delete their OWN posts
* view an error message when form validations fail:
    * A title must be between 1 and 200 characters
    * Body must not be empty
    * City must not be empty
* A malicious user CANNOT save invalid log-post data to the database
    * A title must be between 1 and 200 characters
    * Body must not be empty
    * City must already exist in the database
* A user CANNOT sign-up with an email (or username) that is already in use.


#### Bonuses

A user can... 

* view only the 10 most recent posts on the homepage (pagination)
    * and a link/button to the “next” 10
    * add a link/button to the “previous” 10
* include a geolocation in each of their log-posts
    * see a google map on each city homepage, with the geolocations of the 10 newest posts.
* click on a pin and be redirected to the corresponding log-post
* see a list of the city pages they’ve contributed to, on their public profile
    * see the number of log-posts they’ve written, next to each city name

---

### Sprint 4. (N:N and Beyond)

A user can…

* see any city page / city index / profile --> WITHOUT being signed in
* click “follow this writer” on another user’s profile page
    * see people they follow listed on their public profile page
    * see a feed of log-posts written by people they follow


#### Bonuses

A user can…

* visit a vanity url, like “city/san-francisco”
* assume a “city manager” role for many cities
    * A manager can…
    * update/delete posts for their city(s)
    * edit their city’s homepage
* comment on individual log-posts
    * see the number of comments a log-post has (homepage, profile page)
    * see all of the comments they’ve left, listed on their public profile
    * see comments on comments (1 level)
        * leave comments on comments
            * see comments on comments on comments... (n levels)
* Sign in with OAuth for Instagram
    * See Instagram photos for a city location
