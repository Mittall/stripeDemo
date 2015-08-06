ActionMailer::Base.smtp_settings = {
    :address   => "smtp.mandrillapp.com",
    :port      => 587,
    :user_name => "mittalp.virtueinfo@gmail.com",
    :password  => "zHwD2-JOZNpK11eGa9p45Q",
    :domain    => 'gmail.com'
  }
ActionMailer::Base.delivery_method = :smtp

MandrillMailer.configure do |config|
  config.api_key = "zHwD2-JOZNpK11eGa9p45Q"
end