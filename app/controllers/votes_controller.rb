class VotesController < ApplicationController
  before_action :authenticate!

  def create
    @vote = logged_in_user.votes.new(candidate_id: params[:candidate_id],
                                     score: params[:score])
  end
end
