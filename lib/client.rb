require "httparty"
require "pry"
require "json"

class Client
  include HTTParty

  def vote
  	Client.post("vote_route/candidate_id??/votes",
  		body: { score: 1 },
  		# headers: { "Auth-Token": auth_token})
  end

end

client = Client.new

auth_tokens = ????

auth_tokens.each do |token|
	client.vote(token)
	sleep [0.0005, 0.1, 0.3, 0.5, 0.05].sample
end
