# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wish_list_session',
  :secret      => '13c08037a122e2d51667071f555de35528f4280db3e126b85ee84456de00e6113fceede2c07d9dce5231b85322c5a22408ac59079a8e4b8b75e6e393a05a40f5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
