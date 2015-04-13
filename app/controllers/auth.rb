# see sign up form
get '/signup' do
  erb :'auth/signup'
end

# submit sign up form
post '/signup' do
  user = User.create(params[:user])
  session[:user_id] = user.id
  redirect "/gigs/new"
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
    if !any_gigs?
      redirect "/gigs/new"
    else
      redirect "/user/#{user.id}/practice"
    end
  else
    redirect '/signin'
  end
end


# submit sign out
get '/signout' do
    session[:user_id] = nil
    redirect '/'
end
