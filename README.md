# README

# SETUP

1. Clone the repo:
```
git clone git@github.com:brobertsaz/product_api.git
```
2. CD into the product_api directory
3. You should be prompted to install the correct version of ruby if you have RVM or RBENV installed
4. Install gems
```
bundle
```

## Testing

To run the rspec tests, run:
```
rspec spec
```

## Data Seed

To seed the database with the data from products.json, run:
```
rake data:import
```

## Using the API

To start the server, run
```
rails s
```

For the frontend UI, go to
```
localhost:3000
```

Routes:
```
GET /products
GET /products/search
GET /products/:id
POST /products
DELETE /products/:id
```

Example params for search
```
{
    length: 20,
    width: 12,
    height: 7,
    weight: 20
}
```




## Ruby/Rails Developer Challenge

### Back-End

Directions: Build a minimal API, using Rails and MongoDB, for our products (please see attached). The API should be RESTful, serve JSON as the output, and contain the following CRUD functions:

CREATE
1. Creates a product

READ
1. Shows ALL products
2. Shows ONE product that best matches a given length/width/height/weight query (For example, if I make an API request for a product with the following dimensions: 48”l X 14”w X 12”h (@ 42lbs) the API should send me back “Golf - Small”.)

UPDATE
1. Updates a product

DESTROY
1. Deletes a product

---------------------------------

Other Requirements:
- Use proper HTTP error codes
- Validate data
- Create a script to populate the DB with the products.json file
- Provide Minimal API Documentation (a sample request with its parameters will suffice)

---------------------------------

Helpful Hints:
-With shipping packages, you can always go bigger, but you can’t go smaller (i.e. if an item is 5”x5”x5", you will need the 6”x5”x6" package, not the 4”x5”x5” package). This is also the case for weight. In terms of interpreting the data, think of dimensions and weight of a product as MAX dimensions and MAX weight.

---------------------------------

Build a view that consumes the API with JavaScript, and style it using Twitter Bootstrap

### Front-End

Build a calculator, using HTML, CSS, and JavaScript, that takes dimensional inputs and weight from the user and returns the product that matches our products in the DB. Use the above API to fill the results.

1) Live on a single HTML page with a link to "Launch Calclulator'
2) Clicking "Launch Calculator" should open a modal with the calculator
3) Once the user inputs the dimensions and weight and clicks a "Caculate" button
    - The proper product name is shown in the modal "Use this Double Ski Bag" for instance
    - The modal then closes after 5 seconds
    - The product name is displayed on the original HTML page used to launch the calculator

---------------------------------

Helpful Hints:
-With shipping packages, you can always go bigger, but you can’t go smaller (i.e. if an item is 5”x5”x5", you will need the 6”x5”x6" package, not the 4”x5”x5” package). This is also the case for weight. In terms of interpreting the data, think of dimensions and weight of a product as MAX dimensions and MAX weight.
-The page should be visually appealing as front-end development is consumer facing
-Please don't use any plugins unless they are a robust utility or framework (you're free to use jQuery, Twitter Bootstrap, etc.)

---------------------------------

*Creative Bonus: Make it responsive and match (or improve) the branding on our current site

