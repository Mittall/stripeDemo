class ChargesController < ApplicationController

	def new
	end

	def create
	  # Amount in cents
	  @amount = 500 #also pass the dynamic value params[:your_parameter_name]

	  customer = Stripe::Customer.create(
	    :email => 'example@stripe.com',
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

	 	Charge.info.deliver
	 	User.info_without_template.deliver

		rescue Stripe::CardError => e
	  	flash[:error] = e.message
	  	redirect_to charges_path
	end

end
