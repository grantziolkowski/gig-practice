# see sign up form
get '/signup' do
  erb :'auth/signup'
end

# submit sign up form
post '/signup' do
  user = User.new(params[:user])
  redirect "/user/#{user.id}/practice"
end

# see sign in form
get '/signin' do
  erb :'auth/signin'
end

# submit sign in form
post '/signin' do
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    p "USERID"
    p user.id
    redirect "/user/#{user.id}/practice"
  else
    redirect '/signin'
  end
end

# submit sign out
get '/signout' do
    session[:user_id] = nil
    redirect '/signin'
end
