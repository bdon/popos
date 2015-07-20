source 'https://rubygems.org'
ruby "2.2.1"
gem 'rails', '4.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
# 
gem 'fog-aws'
gem 'carrierwave', github:'carrierwaveuploader/carrierwave'
gem 'rmagick'
gem 'carrierwave_direct'
gem 'sidekiq'

gem "activeadmin", github: "activeadmin"
gem "devise"
gem "ransack"
gem 'geocoder'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'factory_girl_rails'

end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'guard-rspec'
  gem 'launchy'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
	#FOR SUSY
	gem 'sass-rails', '~> 5.0.0.beta1'
	gem 'susy'
	# If you want Compass:
	gem 'compass-rails', '~> 2.0.0'
	gem 'coffee-rails'
	gem 'uglifier'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

