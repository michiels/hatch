# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hatch_session',
  :secret      => 'acbe10e6b2b5a5d3888e33fd03def7825b57358870d48c0a4f6da1515584cb1ca02645e081bf90964da836a81015d8b070356a5335bafb32cc1591704a08c569'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
