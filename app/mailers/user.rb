class User < MandrillMailer::MessageMailer

	default from: "mittalp.virtueinfo@gmail.com"

	def info_without_template
    mandrill_mail(:subject => "Test the user mailer for mandrill!", 
    	            :to => "mittalp.virtueinfo@gmail.com",
    	            :html => "<b><i>Test user mailer without template.</i></b> <img src='/assets/images/icon.jpg' />"
     	            )
	end
end
