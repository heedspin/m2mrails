source 'https://rubygems.org'

gem 'formtastic', '2.2.1'
gem 'airbrake'
gem 'delayed_job_active_record', '~> 0.4.4'
gem 'lighthouse-api', :git => 'https://github.com/tongueroo/lighthouse-api.git'
gem 'active_hash'
gem 'authlogic', '3.3.0'
gem 'will_paginate', '~> 3.0.4'
gem 'paperclip', '~> 2.7.5'
gem 'ruby_parser' # for declarative_authorization
gem 'amatch'
gem 'nokogiri', '1.5.4' # so it doesn't autoupdate
gem 'hominid' # for mailchimper in plutolib
gem 'trollop', '2.0' # Command-line parser.
gem 'crxmake'
gem 'useragent'
gem 'ember-rails'
gem 'ember-source', '1.0.0.rc6.2'
gem 'json'
gem 'jquery-rails'
gem 'jquery-ui-rails'

if File.exists?('../m2mhub')
  gem 'm2mhub', :path => '../m2mhub'
else
  gem 'm2mhub', :git => 'git@github.com:heedspin/m2mhub.git'
end

if File.exists?('../plutolib')
  gem 'plutolib', :path => '../plutolib'
else
  gem 'plutolib', :git => 'git@github.com:heedspin/plutolib.git'
end

group :assets do
  gem 'sass-rails',   "~> 3.2.3"
  gem 'coffee-rails', "~> 3.2.1"
  gem 'uglifier',     ">= 1.0.3"
end

group :database do
  gem 'mysql', '2.8.1'
  gem 'tiny_tds', '0.5.1'
  gem 'activerecord-sqlserver-adapter', '3.2.10'
end





#
#
#
#
#
#
#
#gem 'rails', '3.2.13'
#
## Bundle edge Rails instead:
## gem 'rails', :git => 'git://github.com/rails/rails.git'
#
#gem 'sqlite3'
#
#
## Gems used only for assets and not required
## in production environments by default.
#group :assets do
#  gem 'sass-rails',   '~> 3.2.3'
#  gem 'coffee-rails', '~> 3.2.1'
#
#  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
#  # gem 'therubyracer', :platforms => :ruby
#
#  gem 'uglifier', '>= 1.0.3'
#end
#
#if File.exists?('../m2mhub')
#  gem 'm2mhub', :path => '../m2mhub'
#else
#  gem 'm2mhub', :git => 'git@github.com:heedspin/m2mhub.git'
#end
#
#gem 'mysql', '2.8.1'
#
#gem 'tiny_tds', '0.5.1'
#
#gem 'activerecord-sqlserver-adapter', '3.2.10'
#
#gem 'jquery-rails'
#
## To use ActiveModel has_secure_password
## gem 'bcrypt-ruby', '~> 3.0.0'
#
## To use Jbuilder templates for JSON
## gem 'jbuilder'
#
## Use unicorn as the app server
## gem 'unicorn'
#
## Deploy with Capistrano
## gem 'capistrano'
#
## To use debugger
## gem 'debugger'
