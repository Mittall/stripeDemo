class Charge < MandrillMailer::TemplateMailer

  default from: "mittalp.virtueinfo@gmail.com"

	def info
    mandrill_mail(:subject => "Test charge mailer with mandrill!", 
    	   					:to => "mittalp.virtueinfo@gmail.com", 
    	   					:template => "demo-1")
 	end
end

=begin
		image_url = "/home/mittal/web/16-6-2014/stripeDemo/app/assets/images/icon.jpg"
		filename = File.basename(image_url)
		tmp_file = Tempfile.new(filename)
		tmp_file.binmode
		tmp_file.write(open(image_url).read)
		tmp_file.rewind
    mandrill_mail(:subject => "Test charge mailer with mandrill!", 
    	   					:to => "mittalp.virtueinfo@gmail.com", 
    	   					:template => "demo-1",
    	   					:attachments => [{:contents => "#{tmp_file}" , :name => "icon.jpg", :type => "image/jpg"}]
    	   					)
=end	
