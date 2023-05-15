# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => '0b5caf3e8dfb02',
  :password => '8c95821d2d6d89',
  :address => 'sandbox.smtp.mailtrap.io',
  :domain => 'sandbox.smtp.mailtrap.io',
  :port => '2525',
  :authentication => :cram_md5
}
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default_url_options = { host: 'localhost', port: 3000 }


