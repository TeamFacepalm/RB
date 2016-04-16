class CandidatesController < ApplicationController
  
  def index
    @candidates = Candidates.all
    render "index.json.jbuilder", status: :ok
  end

end