class UsersController < ApplicationController
  before_action :must_user!
  def show
    @users = current_user
  end
end
