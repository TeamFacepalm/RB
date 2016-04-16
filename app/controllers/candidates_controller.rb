class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
    render "index.json.jbuilder", status: :ok
  end
end
