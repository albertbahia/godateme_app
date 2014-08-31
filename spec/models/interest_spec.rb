describe Interest do
	let(:hiking) { Interest.new({
		interest_category: 'eating'
	}) }

	it 'is valid with an interest category' do
		expect(hiking).to be_valid
	end

	it 'is invalid without an interest category' do
		eating = Interest.new({})
		expect(eating).to be_invalid
	end	
end