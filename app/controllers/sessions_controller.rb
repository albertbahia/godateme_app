class SessionsController < Devise::SessionsController

	def new
		super
	end

	def create
		redirect_to main_path
	end

end