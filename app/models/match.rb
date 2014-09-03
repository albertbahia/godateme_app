class Match < ActiveRecord::Base

	validates_presence_of :user_id1, :user_id2
	belongs_to :user
	has_many :deals

end
