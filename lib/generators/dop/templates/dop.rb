# Dragonpay Online Payment

# Setting up configuration
Dop.setup do |config|
  # System requirements
  # * Mechant site must be capable of getting the required data from the customer
  # ex: amount, item_description, email
  # * Merchant site can send http request data to PS system when a customer
  # wishes to pay the merchant with his bank account
  # * Merchant site must have a POSTBACK URL to accept real-time confirmation from PS

  # merchant_id is unique code to identify the merchant
  config.merchant_id = 'please-change-me-with-your-merchant-id'

  # secret_key is a unique password code assigned to merchant for check some validation
  config.secret_key = 'please-change-me-with-your-secret-key'

  # sandbox is where environment goes in
  # We have to environment production and test
  # For production here's the url => https://gw.dragonpay.ph/Pay.aspx
  # For test here's the url => https://test.dragonpay.ph/Pay.aspx
  config.mode = :sandbox

  # post_back_url is url for merchant to accept real-time payment confirmation
  config.post_back_url = "https://www.yoururl.com/api/dop/confirmation"
end
