class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :interests
  has_and_belongs_to_many :matches

  def find_matches
		users = User.all 
		matched_users = users.select do |user| 
			matching_interests = self.interest_category == user.interest_category
			not_same_user = self.id != user.id 
			matching_interests && not_same_user
		end

		matched_users.each do |matched_user|
			Match.find_or_create_by({
				user_id1: self.id,
				user_id2: matched_user.id
				})  
		end
	end

	
	def find_matched_deals
		deals = Deal.all
		matched_deals = deals.select do |deal|
			self.interest_category == deal.category
		end
	end

end
