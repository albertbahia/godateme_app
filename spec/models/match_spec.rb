describe Match do

  let(:match1) { Match.new({
    user_id1: 1,
    user_id2: 2,
  })  }

  it 'is valid with two user id\'s and a date_deal_id' do
    expect(match1).to be_valid
  end

  it 'is invalid without a user id' do
    match2 = Match.new({
      user_id1: 2,
    })
    expect(match2).to have(1).errors_on(:user_id2)
  end

  it 'is invalid without two user id\'s' do
    match4 = Match.new({})
    expect(match4).to be_invalid
  end

end
