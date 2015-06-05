Rdmobile::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = true
	config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address              => "10.0.32.2",
		:port                 => 25,
    :domain               => 'mail.lbv.org.br',
  	:user_name            => nil,
		:password             => nil,
		:authentication       => nil,
		:enable_starttls_auto => true 
	}

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  #config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  #config.active_record.auto_explain_threshold_in_seconds = 0.5

#------------------- CONFIG ----------------------------
  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false # true in production

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false # true in production

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = true

  # Generate digests for assets URLs
  config.assets.digest = true

  # Compress JavaScripts and CSS - Do not compress assets
  config.assets.compress = false # true in production

  # Expands the lines which load the assets
  config.assets.debug = true

  #config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Enable serving of images, stylesheets, and javascripts from an asset server
  config.action_controller.asset_host = "http://libwebdes%d.boavontade.com"
end
