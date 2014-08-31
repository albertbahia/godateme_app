describe Deal do
	let(:deal1) { Deal.new({
		title: 'binging on code',
		category: 'programming',
		description: 'hackathon 24/7, all weekend',
		image_url: 'http://www.placekitten.com/300/300',
		expiration_date: 10012015,
		merchant_id: 3
	})}

	it 'is valid with a title, category, description, image, expiration date, and merchant id' do
		expect(deal1).to be_valid	
	end

	it 'is invalid without a title' do
		deal2 = Deal.new({
			category: 'exercise',
			description: 'bootcamp for everyone',
			image_url: 'http://www.placekitten.com/300/300',
			expiration_date: 12112015,
			merchant_id: 4
		})
		expect(deal2).to have(1).errors_on(:title)
	end

	it 'is invalid without a category' do
		deal3 = Deal.new({
			title: 'walking along the river',
			description: 'enjoy the scenic walk along the Hudson River',
			image_url: 'http://www.placekitten.com/300/300',
			expiration_date: 12112015,
			merchant_id: 2
		})
		expect(deal3).to have(1).errors_on(:category)
	end

	it 'is invalid without a description' do
		deal4 = Deal.new({
			title: 'a boat ride',
			category: 'activity',
			image_url: 'http://www.placekitten.com/300/300',
			expiration_date: 12112015,
			merchant_id: 6
		})
		expect(deal4).to have(1).errors_on(:description)
	end

	it 'is invalid without an image' do
		deal5 = Deal.new({
			title: 'pigging out on the boat',
			category: 'food',
			description: 'an all out buffet of ruby and javascript',
			expiration_date: 12112015,
			merchant_id: 9
		})
		expect(deal5).to have(1).errors_on(:image_url)
	end

	it 'is invalid without an expiration date' do
		deal6 = Deal.new({
			title: 'getting in the zone',
			category: 'programming',
			description: 'ingesting a lot of caffeine',
			image_url: 'http://www.placekitten.com/300/300',
			merchant_id: 10
		})
		expect(deal6).to have(1).errors_on(:expiration_date)
	end

	it 'is invalid without an merchant id' do
		deal7 = Deal.new({
			title: 'coding on steroids',
			category: 'extreme programming',
			description: 'pair programming with two full stack developers',
			image_url: 'http://www.placekitten.com/300/300',
		})
		expect(deal7).to have(1).errors_on(:merchant_id)
	end

	it 'is invalid if it\'s empty' do
		deal8 = Deal.new({})
		expect(deal8).to be_invalid
	end

end