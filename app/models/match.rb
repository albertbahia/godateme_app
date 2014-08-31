class Match < ActiveRecord::Base

	validates_presence_of :user_id1, :user_id2, :date_deal_id
	has_and_belongs_to_many :users
	has_many :deals

end
