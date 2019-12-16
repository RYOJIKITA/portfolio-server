sleep 15
rubocop
rails db:create
rails db:schema:load RAILS_ENV=test
rubocop
rails test
