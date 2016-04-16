class DistrictsController < ApplicationController
  validates_presence_of :county
  
  def show
    @district = District.find(county: params[:county])
    render json: { district: @district }, status: :ok

  def index
    @district = District.all
  	render "index.json.jbuilder", status: :ok
  end
end