# see sign up form
get '/signup' do
  erb :'auth/signup'
end

# submit sign up form
post '/signup' do
  user = User.new(params[:user])
end

# see sign in form
get '/signin' do
  erb :'auth/signin'
end

# submit sign in form
post '/signin' do
  user = User.find_by(:email)
  if user.authentic?(params[:password])
    session[:user_id] = user.id
  else
    redirect '/signin'
  end
end

# submit sign out
post '/signout' do

end
