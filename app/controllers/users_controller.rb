class UsersController < ApplicationController
  def index
    render User.all.to_json
  end

  def show
    if user_exist?
      render User.all[user_id].to_json
    else
      render_not_found
    end
  end


  private

  def user_exist?
    (1..User.all.count).include?(params[:id].to_i)
  end
  def user_id
    params[:id].to_i
  end

  def render_not_found
    render({msg: "404 - not found"}.to_json, status: "404 NOT FOUND")
  end

end
