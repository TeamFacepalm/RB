class VotesController < ApplicationController
  before_action :authenticate!

  def create
    @vote = logged_in_user.votes.new(candidate_id: params[:candidate_id],
    								 district_id: logged_in_user.district_id,
                                     score: params[:score])
    # logged_in_user.update(choice: ["T", "S"].sample)
  	flash[:notice] = 'Vote not cast' unless @vote.save
  end
end