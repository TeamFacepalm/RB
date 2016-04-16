json.candidates @candidates do |candidates|
	json.extract! candidates, :avatar, :name, :party #votes
end
