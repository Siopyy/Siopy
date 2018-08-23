class HomeController < ApplicationController
  before_action :must_user!, only: [:backup]

  def index
  end

  def backup
  end
end
