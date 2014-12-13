helpers do 
	def current_user
		@current_user ||= Player.find_by_id(session[:player_id])
	end
end