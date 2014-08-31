describe User do

  before(:each) { @user = User.new(email: 'user@example.com', gender: 'Male', age: 24, photo: 'http://www.placekitten.com/300/300', interest_category: 'skydiving', name: 'leonard')}

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to eq('user@example.com')
  end

  it 'has a valid gender' do
    expect(@user.gender).to eq('Male')
  end

  it 'has a valid age' do
    expect(@user.age).to eq(24)
  end

  it 'has a valid photo' do
    expect(@user.photo).to eq('http://www.placekitten.com/300/300')
  end

  it 'has a valid interest_category' do
    expect(@user.interest_category).to eq('skydiving')
  end

  it 'has a valid name' do
    expect(@user.name).to eq('leonard')
  end

end
