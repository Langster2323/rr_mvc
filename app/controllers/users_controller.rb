class UsersController < ApplicationController
  def index
    render User.all.to_json
  end
end
