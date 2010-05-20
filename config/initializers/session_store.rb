# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sato7_session',
  :secret      => 'ab31a1142de6694f6f57ef1b8a07f7a305f1a5d4eaa6a42625c094609fdffe53e2360c2539fd5c52c9cf37d5e39d79c337a6066bad08cba132bf0c924f7540bd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
