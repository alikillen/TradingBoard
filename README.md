# **README**

### Alison Killen

### Coder Academy Assessment

### T2A2 - 2-sided marketplace

## **TradingBoard**

**Deployed Site Link:**

https://tradingboard-marketplace.herokuapp.com/

**Github Repo (accessible to educators):**

**Trello Board link:** https://trello.com/invite/b/V72Cv224/b85f321b09dcfe2c2f09eddc1926a3d2/t2a2-marketplace-app


**R7	Identification of the problem you are trying to solve by building this particular marketplace app.**

Board games and card games are often expensive to buy new - TradingBoard provides a place for gamers to recoup some of the money they spend on buying new games by selling them on after they're finished with them, and for gamers to find well-loved games at a lower price ready to go to a new home.

**R8	Why is it a problem that needs solving?**

Often, board games, card games and video games are subject to high retail markups, especially in Australia, making them sometimes inacessibly expensive to users. Also, after playing a game a few times, they can often lose their replayability, meaning sometimes games just get boring after you've played them a few times. TradingBoard hopes to tackle both of these issues by offering a space where gamers can come together to buy, swap and sell second-hand games. 

(Users will be able to message each other, review games, make friends, form parties and schedule meetups all within the app.)

**R11	Description of your marketplace app (website), including:**
- Purpose:

The purpose of TradingBoard is to provide a place where gamers can buy, sell and swap board games, card games and video games. TradingBoard aims to foster a community of like-minded gamers and to help them connect with one another and share their love of games. 

(users can message each other, make friends, and form parties, and schedule games nights all within the app)

- Functionality / features:

On TradingBoard, users can buy second hand games, can list their own games to sell or swap, and can message other users to organise their sales. 


- Sitemap:


- Screenshots:


- Target audience:

TradingBoard is for all game lovers! Whether it's board games, card games or video games, TradingBoard welcomes the gaming community. Especially in Australia where games are often subject to intense retail markups, TradingBoard provides an alternative for gamers to buying games new - whether it's Dungeons and Dragons, Cards Against Humanity, or Nintendo Switch games, gamers can enjoy a huge community-driven collection of quality second-hand games available to buy, sell and trade.


- Tech stack (e.g. html, css, deployment platform, etc):

TradingBoard is built in Ruby on Rails.
The Rails MVC (Model, View, Controller) architecture means that TradingBoard was able to get up and running quickly with adequate seperation of concerns within the site's design, and the logic is written in Ruby.
The site's pages are written in HTML, and Bootstrap (CSS framework) is used to style the site and make it responsive.


**R12	User stories for your app**

##########EDIT################

- As a user, I can create an account, login, and edit my contact details and password
- As a user, I can reset my password if I forget it
- As a user, I can browse listings by searching for a keyword, seeing what's been posted recently, and search for items close to me
- As a user, I can filter listings by price, location, and date listed.
- As a user, I can create listings to sell or swap.
- As a user, I can set my listing's details and price, and upload a photo.
- As a user, the site's design is clear to me and is easy to browse on my phone and laptop.
- As a user, I can message other users about their listings or about swapping a game with them.

#################MAYBE############
**Administrator stories:**

- As an administrator, I can create an account, login, and edit my contact details and password. 
- As an administrator, I can reset my password if I forget it.
- As an administrator, I can browse the site the same way as users to have the same experience as users
- As an administrator, I can edit and remove all listings. 
- As an administrator, I can remove user accounts from the platform if necessary.
- As an administrator, I can send users a priority message if their is an issue with their account or listing. 

**R13	Wireframes for your app**

change according to what extra features are added (preferences, messaging, user ratings/reviews, wishlist)

**R14	An ERD for your app**

(in progress)
https://dbdiagram.io/d/5f1e15ace586385b4ff7f936


**R15	Explain the different high-level components (abstractions) in your app**


**R16	Detail any third party services that your app will use**

- Gems - devise, rollify?
- Stripe for payment?
- Heroku for deployment
- Github for version control

**R17	Describe your projects models in terms of the relationships (active record associations) they have with each other**

see ed discussion
R17: Explain what models you ended up with in your Rails project, and if they were or were not different to what you planned in R18 & R19

**R18	Discuss the database relations to be implemented in your application**

R18: Explain your ERDs with extra focus on the database relations that the ERD is displaying 

User:
- has one: email and password or Oauth login ability, name, location, date joined, stripe acct linked, photo, preferences. 
- has many listings
- has one wishlist
- has one set of contact information (phone, inbox id)
-  one inbox

Listings:
- belongs to user
- has one: user id, listing id, title, description, date uploaded, location, photo, price
- has one set of contact info (phone, inbox id)

Contact info:
- Belongs to user
- Has one inbox id
- Has one phone number
- Has zero or many listings


**************** MAYBES ###########

Wishlist:
- Belongs to user
- Has many listings

Stripe info:
- belongs to user

Inbox: 
- Belongs to user
- has many messages

Messages:
- has one sender (unique user id)
- has one receiver (unique user id)
- Has content

Preferences:
- belong to user


**R19	Provide your database schema design**

from rails app??
R19: Create and show your ERDs

**R20	Describe the way tasks are allocated and tracked in your project**

what is defined as a task??
trello board link and screenshots

## **Resources Used:**

Canvas Lessons
Ed resources

https://www.atlassian.com/agile/project-management/user-stories
https://guides.railsgirls.com/devise
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
