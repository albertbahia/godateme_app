class Interest < ActiveRecord::Base

	validates_presence_of :interest_category
	belongs_to :user

end
