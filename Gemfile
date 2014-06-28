source 'https://rubygems.org'

gem 'rails', '4.1.1'

gem 'jbuilder', '~> 2.0'
gem 'paperclip', '~> 4.1.1'
gem 'devise'

gem 'unicorn'

# Assets
gem 'slim' # Alternate templating language
gem 'jquery-rails'
gem 'uglifier', '>= 1.3.0'
gem 'sass-rails', '~> 4.0.3'
gem 'coffee-rails', '~> 4.0.0'
gem 'turbolinks'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development do
  gem 'sqlite3' # Change this asap. Reason to not use postgres?
  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-rails', '~> 1.1.1'
# gem 'capistrano-rbenv', github: "capistrano/rbenv"
end

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rspec-rails', '~> 3.0.1'
  gem 'capybara', '~> 2.3.0'
  gem 'spring-commands-rspec'
  gem 'shoulda-matchers', '~> 2.6.1', require: false
end

# This is a bad idea, you should use the same database in production as you do 
# in development. There are quirks/features that may be tied to specific databases
# down the track - making debugging issues a shitstorm.
group :production do
  gem 'therubyracer'
  gem 'mysql2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

