class DistrictsController < ApplicationController
  def create
    @district = District.new(county: params['county'],
                             body: params['body'],
                             image: params['image'])
    if @district.save
      render 'create.json.jbuilder', status: :ok
    else
      render json: { errors: @district.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def show
    @district = District.find(params['id'])
    render json: { district: @district }, status: :ok
  end

  def index
    @district = District.all
  	render "index.json.jbuilder", status: :ok
  end
end
