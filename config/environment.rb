
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  
  # Cookie sessions (limit = 4K)
  # WARNING: You MUST generate a new secret (use "rake secret") and add it below!
  config.action_controller.session = {
    :session_key => '_your_app_name',
    :secret      => '0677a17f4e94869409e7aecb29a00fd9' # <- New secret key goes here
  }
  config.action_controller.session_store = :active_record_store

  # Use SQL instead of Active Record's schema dumper when creating the test database.
  # This is necessary if your schema can't be completely dumped by the schema dumper, 
  # like if you have constraints or database-specific column types
  # config.active_record.schema_format = :sql

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector

  # Make Active Record use UTC-base instead of local time
  config.time_zone = 'UTC'
  
  # Gem dependencies
  config.gem 'will_paginate'
  config.gem 'colored'
  config.gem 'youtube-g', :lib=>'youtube_g'
  config.gem 'uuidtools', :version=> '1.0.4'
  config.gem 'hpricot'
  config.gem 'mocha'
  config.gem 'redgreen' unless ENV['TM_MODE']
  config.gem 'gcnovus-avatar', :lib => 'avatar'
  
  
  
  
end

Less::JsRoutes.generate!
