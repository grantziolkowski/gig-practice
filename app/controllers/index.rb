get '/' do
  # Look in app/views/index.erb
  if current_user == nil
    erb :'index'
  else
    redirect "/user/#{current_user.id}/practice/"
  end

end
