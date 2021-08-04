class TeddiesController < ApplicationController
  # by default device setting: have to sign in to go on every page (see in application controller)
  # here skipping this action for index and show, because allow unlogged users to see the teddies
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @teddies = Teddy.all
  end

  def show
    @teddy = Teddy.find(params[:id])
  end
end
