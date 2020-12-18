class CinsController < ApplicationController
  def create
    if params[:cin][:number].gsub(/ +/, '').blank?
      @cin = Cin.new
      flash[:warning] = "Blank CIN provided"
      redirect_to root_path
      # render 'home/index'
    else
      result, cin_id = CinCreationService.new(current_user, params).call
      if !cin_id.blank?
        redirect_to show_cin_path(id: cin_id)
      else
        flash[:warning] = result
        redirect_to root_path
      end
    end
  end

  def show
    @cin = Cin.find_by(id: params[:id])
  end
end
