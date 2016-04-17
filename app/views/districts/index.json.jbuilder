json.districts @districts do |district|
	json.(district, :id, :county, :zip, :state, :body)

	json.candidate district.candidates do |candidate|
		json.(candidate, :id, :name, :party)

	json.user district.users do |user|
		json.(user, :first_name, :last_name, :email)
	end
	end
end

# json.districts @district do |district|
# 	json.extract! district, :id, :county, :zip, :state, :candidate_id, :user_id, :body
# 	json.image district.image.url
# end
