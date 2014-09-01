# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

url = URI.escape('http://api.sqoot.com/v2/categories?api_key=e158uj')
request = HTTParty.get(url)
interests = request['categories']
interests.each do |interest| 
	Interest.create({
		interest_category: interest['category']['slug']
	})
end