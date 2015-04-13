def current_user
  User.find(session[:user_id]) if session[:user_id]
end

def current_username
  current_user.name.capitalize
end

def bounce_guest!
    unless current_user != nil
      set_error! "Please sign in to do that."
      redirect '/signin'
    end
end

def check_permission(user_bearer)
  unless current_user == user_bearer.user
    set_error! "You don't have permission to see that."
    redirect "/gigs/#{current_user.id}"
  end
end

def check_user(user)
  unless current_user == user
    set_error! "You don't have permission to see that."
    redirect "/gigs/#{current_user.id}"
  end
end

def set_error!(error_msg)
  session[:error] = error_msg
end

def get_error
  msg = session[:error]
  session[:error] = nil
  msg
end


