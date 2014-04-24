class PayPalProcessController < ApplicationController
  def index
    request = Paypal::Express::Request.new(
      :username   => SET_YOUR_OWN,
      :password   => SET_YOUR_OWN,
      :signature  => SET_YOUR_OWN
    )
    payment_request = Paypal::Payment::Request.new(
      :currency_code => :JPY,   # if nil, PayPal use USD as default
      :description   => FOO,    # item description
      :quantity      => 1,      # item quantity
      :amount        => 1.00,   # item value
    )
    response = request.setup(
      payment_request,
      YOUR_SUCCESS_CALBACK_URL,
      YOUR_CANCEL_CALBACK_URL
    )
    response.redirect_uri
  end
end
