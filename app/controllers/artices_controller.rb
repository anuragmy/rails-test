class ArticesController < ApplicationController
  def index
    artices = Artice.recent.page(params[:page]).per(params[:per_page])
    render json: artices
  end
end