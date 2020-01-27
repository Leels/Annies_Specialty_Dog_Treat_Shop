# Annie's Specialty Dog Treat Shop
## By: Lela Smith

### Description
#### Database tracker for specialty dog treats shop. The database uses a one to many relationship to track products (which have a product name, cost, and country of origin) and each product's reviews (which have an author, content_body and rating). Site's admin has full crud capability. Admin login information: email: admin@admin.com password: admin.

### Project Specs
#### Landing Page
* The landing page contains basic information about the company and allows users to easily navigate to other areas of the site.
* This page also includes the three most recently added products, products from the USA and the product with the most reviews.

#### Products
* The site includes a products section with a list of the products. Each product is clickable with a detail view.
* Users are able to add, update and delete new products.
* Users are able to click an individual product to see its detail page.
* Users are able to add a review to a product.

#### Scopes
* The site displays the following information on the site:
  1. The product with the most reviews.
  2. The three most recently added products.
  3. All products made in the USA for buyers that want to buy local products.

#### Authentication
* Site has an admin with special permissions:
  1. Admin is able to log in and out of the application.
  2. Admin can add update and delete products.
  3. Admin can add reviews.
  4. Other users do not have CRUD functionality.
  5. User can create an account and add add review to a product.



### Admin Routes
|HTTP verb|Route|CRUD Action|Description|
|---|---|---|---|
|GET|/products|READ|Get list of products|
|GET|/products/:id|READ|Look at detail page for a single product|
|POST|/products|CREATE|Add new product to the list of products|
|PATCH|/products/:id|UPDATE|Update a single product|
|DELETE|/products/:id|DELETE|Delete a product from the list|
|GET|/products/new|READ|Go to the form page for adding a new product to the list|
|GET|/products/:id/edit|READ|Go to the form page for editing a product


|HTTP verb|Route|CRUD Action|Description|
|---|---|---|---|
|GET|/products/:id/reviews/:review_id|READ|Look at detail page for a single review|
|POST|/products/:id/reviews/:review_id|CREATE|Add new review to the list of reviews|
|PATCH|/products/:id/reviews/:review_id|UPDATE|Update a single review|
|DELETE|/products/:id/reviews/:review_id|DELETE|Delete a review from the list|

### Known Bugs
#### None

### Setup
* Download Postgres
* Clone this repository:
* from  _C:\Users\exampleUser\exampleCloneLocation\example-project-title>_
1. $ bundle install
2. $ rake db:migrate
3. $ rake db:test:prepare
4. $ rake db:seed (to seed data)
5. $ rails s
6. navigate to localhost:3000


### Technologies Used
* HTML
* CSS
* Bootstrap
* Ruby 2.5.1
* Rails 5.2.4.1
* Sinatra
* PostgreSQL
* Simplecov
* Capybara

### License
#### This software is licensed under the MIT license.

#### Copyright (c) 2019 Lela Smith
