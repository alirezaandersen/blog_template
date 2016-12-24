source 'https://rubygems.org'


gem 'rails', '4.2.6'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'rails_12factor', group: :production
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem "simple_calendar"
gem 'recurring_select'


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :test do
  gem "capybara"
  gem "capybara-screenshot"
  gem "fuubar"
  gem "shoulda-matchers"
  gem "timecop"
  gem "webmock"
end


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails'
  gem "pry"
  gem "pry-nav"
  gem "pry-doc"
  gem "pry-rails"
end

group :development, :test, :staging do
  gem "database_cleaner"
  gem "factory_girl_rails"
  gem "faker"
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end
