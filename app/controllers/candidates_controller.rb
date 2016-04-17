class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
    render "index.json.jbuilder", status: :ok
  end

  def create
    @candidate = Candidate.new(name: params['name'],
                               party: params['party'],
                               avatar: params['avatar'],
                               district_id: params['district_id'])
    if @candidate.save
      render 'create.json.jbuilder', status: :ok
    else
      render json: { errors: @candidate.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
