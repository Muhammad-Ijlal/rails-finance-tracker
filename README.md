# RailsPhotoApp

## Table of Contents
1. [Project Overview](#project-overview)
2. [Installation Instructions](#installation-instructions)
3. [Directory Structure](#directory-structure)
   
## Project Overview
### Description
RailsFinanceTracker is a Ruby on Rails application designed to help users track their financial data. The application leverages various gems and configurations to provide a robust and scalable solution for financial tracking.
### Key Features
1. User Authentication: Utilizes Devise for user authentication and management.
2. Database Management: Supports SQLite for development and PostgreSQL for production environments.
3. Asset Management: Uses Sprockets for asset pipeline and Bootstrap for styling.
4. Background Jobs: Configurable to use different queuing backends like Resque.
5. Email Handling: Configurable Action Mailer settings for email delivery.
6. API Integration: Integrates with external financial data APIs using iex-ruby-client.
## Installation Instructions
### Prerequisites

- Ruby 3.0.0
- Rails 7.0.3
- PostgreSQL

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/username/rails-finance-tracker.git
    ```

2. Navigate to the project directory:
    ```sh
    cd rails-finance-tracker
    ```

3. Install the required dependencies:
    ```sh
    bundle install
    ```

4. Set up the database:
    ```sh
    rails db:setup
    ```

## Directory Structure
```
.
├── Gemfile
├── Rakefile
├── README.md
├── .gitignore
├── .ruby-version
├── app
│   ├── assets
│   │   ├── config
│   │   │   └── manifest.js
│   │   └── stylesheets
│   │       └── application.scss
│   ├── channels
│   │   └── application_cable
│   │       └── channel.rb
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── user_stocks_controller.rb
│   │   ├── users_controller.rb
│   │   └── welcome_controller.rb
│   ├── helpers
│   │   ├── application_helper.rb
│   │   ├── user_stocks_helper.rb
│   │   └── users_helper.rb
│   ├── javascript
│   │   ├── application.js
│   │   └── controllers
│   │       ├── application.js
│   │       └── index.js
│   ├── mailers
│   │   └── application_mailer.rb
│   ├── models
│   │   ├── application_record.rb
│   │   ├── stock.rb
│   │   ├── user.rb
│   │   └── user_stock.rb
│   ├── views
│   │   ├── layouts
│   │   │   ├── application.html.erb
│   │   │   ├── mailer.html.erb
│   │   │   ├── mailer.text.erb
│   │   │   └── _navigation.html.erb
│   │   ├── stocks
│   │   │   └── _list.html.erb
│   │   ├── users
│   │   │   ├── my_portfolio.html.erb
│   │   │   └── _results.html.erb
│   │   └── welcome
│   │       └── index.html.erb
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── cable.yml
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── importmap.rb
│   ├── initializers
│   │   ├── assets.rb
│   │   └── devise.rb
│   ├── locales
│   │   └── en.yml
│   ├── puma.rb
│   └── routes.rb
├── db
│   ├── migrate
│   │   └── 20220802124638_create_stocks.rb
│   ├── schema.rb
│   └── seeds.rb
├── public
│   ├── 404.html
│   ├── 422.html
│   ├── 500.html
│   └── robots.txt
├── test
│   ├── application_system_test_case.rb
│   ├── controllers
│   │   ├── user_stocks_controller_test.rb
│   │   └── users_controller_test.rb
│   ├── fixtures
│   │   ├── friendships.yml
│   │   ├── user_stocks.yml
│   │   └── users.yml
│   ├── models
│   │   ├── friendship_test.rb
│   │   ├── stock_test.rb
│   │   ├── user_stock_test.rb
│   │   └── user_test.rb
│   └── test_helper.rb
```
