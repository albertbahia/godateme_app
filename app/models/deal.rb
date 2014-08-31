class Deal < ActiveRecord::Base

	validates_presence_of :title, :category, :description, :image_url, :expiration_date, :merchant_id
	belongs_to :match

end
