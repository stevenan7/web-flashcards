get'/' do
  erb :'/index'
end

get '/register' do 
  erb :'/register'
end

post '/register' do 
  #build logic to allow users to register
  #@user.create
end

get '/login' do
  erb :'/login'
end

post '/login' do
	@user = User.find_by(name: params[:name])
	if @user && @user.password == params[:password]
		session[:user_id] = @user.id
		redirect "users/#{@user.id}"
	else
		redirect '/login'
	end
end

get '/users/:user_id/logout' do
	session.clear
	redirect '/'
end

get '/users/:user_id' do
	@user = current_user
	@decks = Deck.all
	erb :user
end

get '/users/:user_id/decks/:deck_id' do
	@user = current_user
	@decks = Deck.all

	erb :round

end
