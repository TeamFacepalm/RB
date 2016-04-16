json.candidates @candidates do |candidates|
	json.extract! candidates, :avatar, :name, :patrty #votes
end