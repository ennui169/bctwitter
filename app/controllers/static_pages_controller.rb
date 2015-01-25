class StaticPagesController < ApplicationController
	def index
		if user_signed_in?
			if current_user.profile #if it exists, it returns the profile; if it doesn't, it returns new
				redirect_to tweets_path #redirecting to control file--try to use redirect, less render
			else
				flash[:success] = "Create a profile below" #flash survives a redirect--other variables lost; when rendering, it is not redirecting, add .now to say don't survive redirect
				redirect_to new_profile_path
			end
		end
	end
end