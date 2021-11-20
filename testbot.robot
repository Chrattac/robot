*** Settings ***

Resource            resource.robot

Suite Setup         Prepare Browser
Suite Teardown      Close Browser 

*** Test Cases ***

Go To Swag Labs
	go to 	https://www.saucedemo.com/

Login
	Wait Until Page Contains Element	id=login-button
	Input text	id=user-name		problem_user
	Input text 	id=password			secret_sauce
	Click Element	id=login-button

Wait for load
	Wait Until Page Contains	© 2021 Sauce Labs.

Add 1st item to cart
	Click element	id=add-to-cart-sauce-labs-backpack

Add 2nd item to cart
	Click element	id=add-to-cart-sauce-labs-fleece-jacket

Add 3rd item to cart
	Click element	id=add-to-cart-test.allthethings()-t-shirt-(red)

Go to cart
	Click element	id=shopping_cart_container

Logout
	Click button	id=react-burger-menu-btn
	Click link		id=logout_sidebar_link

Login2
	Wait Until Page Contains Element	id=login-button
	Input text	id=user-name		standard_user
	Input text 	id=password			secret_sauce
	Click Element	id=login-button

Add items to cart
	Wait Until Page Contains	© 2021 Sauce Labs.
	Click element	id=add-to-cart-sauce-labs-fleece-jacket
	Click element	id=add-to-cart-test.allthethings()-t-shirt-(red)

Go to cart2
	Click element	id=shopping_cart_container
	Wait Until Page Contains Element	id=checkout
	Click button 	id=checkout

Checkout
	Wait Until Page Contains Element	class=checkout_buttons
	Input text	id=first-name	Botti
	Input text	id=last-name	Bottinen
	Input text	id=postal-code	12345
	Click Button 	id=continue

Finish
	Wait Until Page Contains Element	id=finish
	click Button 	id=finish
	Wait Until Page Contains	THANK YOU FOR YOUR ORDER