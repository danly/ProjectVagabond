# ProjectVagabond
## Travel-Zine
## TEAM C2D2
#### Contributors: Connor Slakey, Connor Stanley, Daniel Gih, Daimeon Pilcher 

#### Customer: Nathan Allen

### Description
A travelers blog where a user can sign up and post and see other travellers's logs in various cities around the world!

Start sharing your tips with our large and expansive community of ffake people and their ffake tips!

[Group Trello](https://trello.com/b/g3EnYay8/project-vagabond)

### Set up

Clone this repo `git clone https://github.com/danlyg/ProjectVagabond.git`

Make sure you have `PostgreSql` installed on your device and a server running.

Inside `/ProjectVagabond/project_vagabond_app/` in your terminal: bundle and create a database.

`bundle`

`rake db:create`

(OPTIONAL if you would like some pre-seeded ffaker data)

`rake db:seed`

Run the rail's server

`rails server` (or `rails s`) and go to `localhost:3000` to view the application.

### Use of the Application

#### Create a user
1) Goto Signup

2) Enter your information and include a current city from the drop down.

#### Navigation (Existing Features)
- Click on `Profile` to go your profile
  
  - Add a picture
  
  - Edit information
  
  - Can see all the posts you have contributed
  
- Click on `New Log` to post a new tip or comment to a specific city of your choosing

- Click on `Cities` to view a list of cities available
  
  - Can see various posts listed in specific cities page

- Click on `Home` to return to the splash page

- Click on `Logout` to log out of your current session.

- A user can edit or delete posts

NOTE: At this moment a user can only post a new log or see cities when logged in.

#### Technologies Used
- Ruby on Rails
  - Active Record
  - Sessions
- FFaker
- BCrypt
- Bootstrap
- Jquery
- PostgreSql

#### Future Features
- Google Maps API centering map on specific city
- OAuth Instagram
- Authorization
  - Create an admin
  - Add and remove cities
  - Remove posts
