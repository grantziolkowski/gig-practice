def current_user
  User.find(session[:user_id]) if session[:user_id]
end

def bounce_guest!
  unless current_user
    set_error! "Please sign in to do that."
    redirect '/signin'
  end
end