# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_publish-that_session',
  :secret      => '68d5ce45c46a82d61d2b1e6afd878a0adb0a9a8cf03b1ead83dd6555ca2ca9bd28afd050440e16ab58371acb226a0dc3545bdcc2fe3d447af2b5e729169390f9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
