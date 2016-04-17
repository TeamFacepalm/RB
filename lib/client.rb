require "httparty"
require "pry"
require "json"

class Client
  include HTTParty

  def vote
  	Client.post("candidates/:candidate_id/votes",
  		body: { score: 1 })
  		# headers: { "Auth-Token": auth_token})
  end

end

client = Client.new

auth_tokens = ["c14fa7f9a143fc840d32a39b861d199f", 
			   "af5277f30ce9e14278f67cc4315e491b",
			   "0b37e764173f3c54d9b99368e5e1527e",
			   "ef6eb6d8c2e361779b138d18af4753a5",
			   "fba10cacf9cafc9df658368a7b3e2e46",
			   "243a6ce22e088fd76405a861a2fb49f5",
			   "eb4817e68747d8afc46e9d4b079196d1",
			   "f00bf4519cc517cd08f67ceead2b0bc6"]

auth_tokens.each do |token|
	client.vote(token)
	sleep [0.0005, 0.1, 0.3, 0.5, 0.05].sample
end
