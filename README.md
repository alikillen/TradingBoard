# **README**

### Alison Killen

### Coder Academy Assessment

### T2A2: 2-sided marketplace in rails

## **TradingBoard**

**Deployed Site Link:** https://tradingboard-marketplace.herokuapp.com/

(probably best to use fake data when signing up)

**Github Repo (accessible to educators):** https://github.com/alikillen/TradingBoard




**R7	Identification of the problem you are trying to solve by building this particular marketplace app.**

Board games and card games are often expensive to buy new - TradingBoard provides a place for gamers to recoup some of the money they spend on buying new games by selling them on after they're finished with them, and for gamers to find well-loved games at a lower price ready to go to a new home.

**R8	Why is it a problem that needs solving?**

Often, board games, card games and video games are subject to high retail markups, especially in Australia, making them sometimes inacessibly expensive to users. Also, after playing a game a few times, they can often lose their replayability, meaning sometimes games just get boring after you've played them a few times. TradingBoard hopes to tackle both of these issues by offering a space where gamers can come together to buy, swap and sell second-hand games. 


**R11	Description of your marketplace app (website), including:**
- Purpose:

The purpose of TradingBoard is to provide a place where gamers can buy, sell and swap board games, card games and video games. TradingBoard aims to foster a community of like-minded gamers and to help them connect with one another and share their love of games. 

- Functionality / features:

On TradingBoard, users can browse through different second hand card games, video games, and tabletop games. Users can buy second hand games, and can list their own games to sell or swap. 

The site is currently super basic, and has scope for lots of improvement such as adding messaging feature so users can arrange swaps+purchases etc, stripe payment capability, searchbar system to filter listings, transactional mailing system, updating user preferences, user wishlist/watch item feature, and ratings feature to give feedback about other users.

- Sitemap:

Original Sitemap:
![image](docs\OGsitemap.PNG "OG sitemap")

Final Sitemap:
![image](docs\finalsitemap.PNG "final sitemap")


- Screenshots:

Signup/login:
![image](docs\signuppage.PNG "signup/login page")

Homepage:
![image](docs\homepagelistings.PNG "homepage listings")

My Listings:
![image](docs\mylistings.PNG "my listings")

Edit user details and dropdown menu:
![image](docs\edituseranddropdown.PNG "edit user and dropdown menu")

New Listing Form:
![image](docs\newlistingform.PNG "new listing form")

Edit listing form:
![image](docs\editlistingform.PNG "edit listing form")

- Target audience:

TradingBoard is for all Australian game lovers! Whether it's board games, card games or video games, TradingBoard welcomes the gaming community. Especially in Australia where games are often subject to intense retail markups, TradingBoard provides an alternative for gamers to buying games new - whether it's Dungeons and Dragons, Cards Against Humanity, or Nintendo Switch games, gamers can enjoy a huge community-driven collection of quality second-hand games available to buy, sell and trade.


- Tech stack (e.g. html, css, deployment platform, etc):

TradingBoard is built in Ruby on Rails.
The Rails MVC (Model, View, Controller) architecture means that TradingBoard was able to get up and running (relatively) quickly with adequate seperation of concerns within the site's design, and the logic is written in Ruby.
The site's pages are written in HTML, and Bootstrap (CSS framework) and CSS is used to style the site and make it (semi) responsive.


**R12	User stories for your app**

- As a user, I can create an account, login, and edit my contact details and password
- As a user, I can reset my password if I forget it
- As a user, I can browse all listings, to see if there's anything I want to buy or swap
- As a user, I can create listings to sell or swap.
- As a user, I can set my listing's details and price, and upload a photo.
- As a user, the site's design is clear to me and is easy to browse on my phone and laptop.

In the future I would love to add more roles like administrator that can manage and delete all listings.
 

**R13	Wireframes for your app**

I used wireframes to design my initial idea of the app and its features, which are loosely based off the website Gumtree as its a similar concept. As you can see my original wireframes included ideas for how the wishlist would look, and user profile/feedback system, search results, etc. The submitted app is much simpler with not as many pages and a basic design implementation from bootstrap, but I still tried to follow the basic structure of my wireframes.

The wireframes saved from balsamiq can be seen in my pdf in docs folder.

Screenshots (please see PDF for all wireframes):

![image](docs\homepagemobile.PNG "mobile homepage")

![image](docs\newlistingmobile.PNG "new listing page mobile")

![image](docs\homepagepc.PNG "homepage on pc")

![image](docs\homepagetablet.PNG "homepage on tablet")


**R14	An ERD for your app**

This is the original ERD (created with dbdiagram.io) that details the scope for improvement (contact table, preferences table, wishlist table etc) since I did not have time to implement all the tables seen in the image below.

![image](docs\OG-ERD.PNG "original ERD design")

Link for original ERD on dbdiagram.io:

https://dbdiagram.io/d/5f1e15ace586385b4ff7f936



This is the ERD as it currently stands for the submitted app, which is much simpler:

![image](docs\finalERD.PNG "final ERD design")
Link to final ERD diagram on dbdiagram.io:

https://dbdiagram.io/d/5f327051e1246d54aa2ce6e4



*Please note that specific relationships (like one to many etc) are not shown in the screenshot, please view the links and hover over the connections to see what relationships are present between tables.*


**R15	Explain the different high-level components (abstractions) in your app**

A high level overview of browsing the site and its tasks are as follows:

- Users can signup for an account at the initial signup page. They can login and logout of their account at will. Users can update their account settings (name, email, password) using the navbar dropdown "My TradingBoard - Account Settings".

- On the homepage, all the listings on the site are listed for users to view (this will eventually need pagification but I didnt get up to it yet).

- If a user has posted a listing, on the homepage they are able to click through and edit the listing they have posted. Edit listing calls the edit method, which renders the edit form, and users can update listing information.

- When users click on show listing from the homepage, this calls the show method in the controller, which renders the show page, showing the listing details. Users can destroy and edit their listings from this page.

- Users can view all listings they have posted by clicking the dropdown menu "My Tradingboard-My Listings".

- Users can navigate easily between pages with the use of the menu and clear links between pages.


**R16	Detail any third party services that your app will use**

The app is very basic at the moment so only includes the following third-party services:

- Gems
   - devise for user login/password/authentication
   -  cancancan for backend permissions and authorisation
   -  bootstrap for CSS styling and layouts
   -  faker for seeding fake data (seeding database works locally but not on heroku yet)
   -  aws-sdk-s3 gem for ability to upload images to AWS S3 storage bucket
- Heroku for deployment
- Github for version control
- Unsplash was used to get high quality free images featured on the site
- AWS storage service was used to store images uploaded in bucket

There is certainly scope to include more third party services, such as:
- Stripe for payment
- OAuth for multiple login authentication options
- gems to help with searching capability
- pagy gem for pagification
- gems like mailgun for transactional emails
- Third party API like google maps for location etc


**R17	Describe your projects models in terms of the relationships (active record associations) they have with each other**

Each user has many:

 - listings to buy, aka foreign key 'buyer' on the listings table.
 - listings to sell, aka foreign key 'seller' on the listings table.
- Both of these are dependent so will be destroyed if the user is destroyed.

Each listing

  - belongs to a buyer that is associated to a user in the users table. Buyers are optional, as listings need not be guaranteed a buyer when they are initially being posted for selling.
 -  belongs to a seller that is associated to a user in the users table. Sellers are not optional - listings must have a seller, which is the user that is posting the listing. This forms the basis of a lot of verification within the app

In the listing model you can also see that it validates the existence of certain data when creating a new listing, like photo, title, description, seller, and category. And that users cannot edit or destroy a listing without first being logged in, and then only if that listing.seller = user.id.

The model I implemented was a bit different from what I had first researched, as I used a self-referential association, but once i understood that I think it made my model simpler overall.

**R18	Discuss the database relations to be implemented in your application**


In my ERD, you can see that a user is not actually explicitly associated with a user. User id is not corresponded with listing id. This is because it has a self-referential association. 

User:
- has one: id, email and password, name, created at, updated at, name, reset password token
- has many listings_to_sell - aka seller on the listings table
- has many listings_to_buy - aka buyer on the listings table

Listings:
- has one: id, title, description, description/body, created_at, price_type, category, price, photo
- belongs to buyer_id and seller_id that are foreign keys for user id



**R19	Provide your database schema design**

![image](docs\schema.PNG "schema")

Link to schema on dbdidagram.io:

https://dbdiagram.io/d/5f32442be1246d54aa2cdf5a

Schema in app:
<pre><code>
ActiveRecord::Schema.define(version: 2020_08_04_072723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "listings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.bigint "buyer_id"
    t.bigint "seller_id"
    t.text "description"
    t.integer "price_type"
    t.integer "price"
    t.integer "category"
    t.index ["buyer_id"], name: "index_listings_on_buyer_id"
    t.index ["seller_id"], name: "index_listings_on_seller_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "listings", "users", column: "buyer_id"
  add_foreign_key "listings", "users", column: "seller_id"
end
</code></pre>



Link to schema on dbdiagram.io:

https://dbdiagram.io/d/5f32442be1246d54aa2cdf5a

*Please note that specific relationships (like one to many etc) are not shown in the screenshot, please view the links and hover over the connections to see what relationships are present between tables.*

<br>

**R20	Describe the way tasks are allocated and tracked in your project**

I chose trello as my project management tool for this app. I find it highly useful to break down tasks in the rubric and track them for completion.

I used colour coding to represent several categories: key feature, optional sprinkle, research, docs, and styling.

And I seperated cards(tasks) into doing and done columns to see how much more I had to do.

Below you can see several screenshots I took of my trello throughout the process.

I also tracked my journey in my #100daysofcode log and via twitter to share the highs and lows of getting to this MVP :)

**Trello Board link:** https://trello.com/invite/b/V72Cv224/b85f321b09dcfe2c2f09eddc1926a3d2/t2a2-marketplace-app
(shared with instructors)

Trello board screenshots:

![image](docs\trello.PNG "trello")
![image](docs\trello2.PNG "trello")
![image](docs\trellodone.PNG "trello")






**OTHER NOTES:** 

Heroku deploy not fully functional - create listing and my listings pages have errors - heroku went down for a little while the day of submission. Jason helped me troubleshoot heroku for a few hours but we had no luck fixing those errors yet. But is fully functional on localhost.

Please note that heroku has no listings uploaded - I was unable to seed the database for heroku so please create listings as you choose and edit etc to play around with the funcionality of the site.

At this point in time the search bar is just aesthetic, don't yet have a working search function. Coming soon!

Major styling updates are needed in order to improve responsiveness on mobile and for general site appearance.
