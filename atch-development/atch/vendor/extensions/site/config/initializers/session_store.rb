# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_atch_session',
  :secret      => 'd03024d4c326ac87de200a5e688bba5a57073c6d6680be240b089ff59737d0ca4da3abe4b443d5b3d1af0685becd0ef9f5c7c71a14eed6fd35896a4a5a075638'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store