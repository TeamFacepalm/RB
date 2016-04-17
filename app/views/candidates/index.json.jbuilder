json.candidates @candidates do |candidate|
	json.extract! candidate, :avatar, :name, :party
	json.total candidate.votes.sum(:score)
end
