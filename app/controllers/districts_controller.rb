class DistrictsController < ApplicationController
  def show
    @district = District.find(county: params[:county])
    render json: { district: @district }, status: :ok
  end

  def index
    @district = District.all
  	render "index.json.jbuilder", status: :ok
  end
end
