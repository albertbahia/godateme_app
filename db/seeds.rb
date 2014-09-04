# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# Seed data for interests
url = URI.escape('http://api.sqoot.com/v2/categories?api_key=e158uj')
request = HTTParty.get(url)
interests = request['categories']
interests.each do |interest| 
	Interest.create({
		interest_category: interest['category']['slug']
	})
end

# Seed data for deals
categories = ['skydiving', 'outdoor-adventures']

categories.each do |category|
	@sqoot = Sqoot.search(category)
	@sqoot.each do |deal|
		Deal.create({
			title: deal['deal']['title'],	
			category: deal['deal']['category_slug'],
			description: deal['deal']['description'],
			image_url: deal['deal']['image_url'],
			expiration_date: deal['deal']['expires_at'],
			merchant_id: deal['deal']['merchant']['id']
		})
	end
end

# Seed data for users
emails = ['sheldon@cooper.com', 'leonard@hofstaetder.com', 'penny@penny.com', 'raj@kuth.com', 'howard@wolow.com']

genders = ['Male', 'Female']

names = ['sheldon', 'leonard', 'penny', 'raj', 'howard']

photos = ['http://www.placekitten.com/300/300', 'http://www.placesheen.com/200/200']

ages = [20, 21, 22, 23, 24, 25, 26, 27, 28]

emails.each do |email|
	User.create!({
		email: email,
		name: names.sample,
		gender: genders.sample,
		photo: photos.sample,
		age: ages.sample,
		interest_category: categories.sample,
		password: 'test123456789test',
		password_confirmation: 'test123456789test'
	})
end

user_id1s = [1 ,2 ,3 ,4]

user_id2s = [2, 4, 6, 8]

date_deal_ids = [1 ,3, 5 ,7]

user_id1s.each do |user_id1|
	Match.create({
		user_id1: user_id1,
		user_id2: user_id2s.sample,
	})
end

