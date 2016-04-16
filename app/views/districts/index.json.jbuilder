json.districts @districts do |districts|
	json.extract! districts, :county, :body, :candidate_id #votes
end