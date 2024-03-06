# app/controllers/users_controller.rb
class UsersController < ApplicationController
  def index
    response = HTTParty.get("http://localhost:3000/api/users")
    @users = JSON.parse(response.body)
  rescue => e
    @error = "Failed to fetch users: #{e.message}"
  end
end
