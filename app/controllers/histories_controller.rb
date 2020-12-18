class HistoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @histories = current_user.histories.includes(:cin).paginate(page: params[:page], per_page: 3)
  end
end
