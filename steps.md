This document explains how to build each of these pages using Bootstrap.
Approach:


Index Page:

1. Create this page again in Bootstrap to make it responsive.

2. Create a fixed navigation bar using the Bootstrap navbar classes like this <div
class="navbar navbar-inverse navbar-fixed-top">.

3. This is a collapsing navbar, include the navigation options to login and signup pages.
4. Link the signup option to signup.html

5. Link the login option to login.html

6. Add a background image below the navbar, declare a div with id
banner_image assigned to it. In the CSS file, using id banner_image as a
selector, write the style statements with the following properties:
a. padding-top: 75px;
b. padding-bottom: 50px;
c. text-align: center;
d. color: #f8f8f8;
e. background: url(../img/intro-bg_1.jpg) no-repeat center center;
f. background-size: cover;


7. On the background image, add a link to products.html page. This link should
look like a button, for adding the link:

a. Create a div inside the <div id=banner_image> and assign it Bootstrap
container class like this <div class= “container”>.
  
b. Inside the container div create another div and assign it an id
“ banner_content ”.

c. In the style.css file write the styling to the banner_content with the
following properties:
i. position: relative;
ii. padding-top: 6%;
iii. padding-bottom: 6%;
iv. margin-top: 12%;
v. margin-bottom: 12%;
vi. background-color: rgba(0, 0, 0, 0.7);
vii. max-width: 660px;

d. Inside the <div id=”banner_content”>, create a link with products.html
assigned to the href, with text Shop Now and class =”btn btn-danger
btn-lg active” assigned to the anchor tag.
  
  
8. Add a footer to this page, with text “Copyright © Lifestyle Store. All Rights
Reserved” and “Contact Us: +91 90000 00000”

a. Inside the <footer> tag, create a div with class container assigned to it.
Use center tag to add the content inside the footer tag.
b. In the index.css write the styling for the footer with the following
properties:
i. padding: 10px 0;
ii. background-color: #101010;
iii. color:#9d9d9d;
iv. bottom: 0;
v. width: 100%;
Login Page:
  
1. Create a fixed navigation bar using the Bootstrap navbar classes like this <div
class="navbar navbar-inverse navbar-fixed-top">.

2. This is a collapsing navbar, include the navigation options to login and signup pages.

a. Link the signup option to signup.html

b. Link the login option to login.html

3. Create a login form like this:

a. Create a Bootstrap primary panel with header and footer.

b. Inside the panel body, add text “Login to make a purchase” in a paragraph
tag with class text-warning assigned to it.

c. Below the text content, create a login form with email and password
fields using Bootstrap form classes form-group and form-control.

d. Add a button below the email and password field using Bootstrap
button classes btn and btn-primary.

e. Add “Don't have an account? Register” in the panel footer using the
class panel-footer.

4. Add the footer at the end of the page.
Signup Page:

1. Create a header and add navigation links to signup (signup.html) and login
page (login.html)

2. Using Bootstrap form classes create a signup form like this :
3. Add a footer below the form.

When you’re done, the signup page should look like this:
Products Page:

Create post login products page. The post login web page is divided into three
sections:

1. Header with navigation links to cart, settings and logout.
2. Content
3. Footer.

1. Create an after login fixed header navigation bar using the Bootstrap navbar classes
like this <div class="navbar navbar-inverse navbar-fixed-top">.
  
2. This is a collapsing navbar, include the navigation options to cart, settings and
logout.
a. Link the cart option to cart.html
b. Link the settings option to setting.html
c. Link the logout option to logout.html

3. Create a div and assign class container to it.

4. Inside the div with class container , create another and assign class jumbotron. Inside
this div, add the text “Welcome to our Lifestyle Store!” in a <h1> tag and add text “
We have the best cameras, watches and shirts for you. No need to hunt around, we
have all in one place.” in a <p> tag.
  
5. Create a row adding cameras, assign class text-center to the row.

6. Inside the row create a div and assign classes col-md-3 col-sm-6 to this div. Inside
this div, add an image thumbnail with caption and button to create an item listing.
Here is an example:

a. Using the images of the camera items provided in the img folder create image
thumbnails for 4 item listings for cameras.

b. Using the images of watches and shirts, create similar item listings
Note: Use a separate rows for watches and shirts.
7. Add the footer at the end of the page.


Cart page:
The cart page is used to verify and confirm the item purchase of the items added to
the cart. This is how the cart page should look like:

1. Create an after login fixed header navigation bar.

2. Create a table with 4 columns and 3 rows. The table has “Item Number, Item Name,
Price” as table headers. 
Add a link to the success.html page inside the 3rd row, 4th
column and assign classes “btn btn-primary” to the <a> tag.
Item Number Item Name Price
  
Total Rs 0/-
3. Add the footer at the end of the page.
Settings Page:

The settings page is used to update a user’s password. This is how the settings page
should look like:

Success page:
It should contain the message:
● Display success message: Your order is confirmed. Thank you for shopping
with us. Click here to purchase any other item.
● Click here in the success message will be a link to products.php page.
