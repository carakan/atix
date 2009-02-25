# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_atix_session',
  :secret      => '49b75960d5e6132cf265cad391eb76df86ebed0887f3a3887908462650ebd60831bfc476119129ae9da8af12edfb6844cc0e621c3b8de659739aa0aae75c024f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
