class HomeController < ApplicationController
  before_action :authenticate_user!, only: :authentication
  def index
    # @pics = Pic.all.order(made: :desc)
    # @pics = Pic.page(params[:page]).per(20)
  end

  def authentication
  end
end
