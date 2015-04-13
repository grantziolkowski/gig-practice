def  valid_id?(id)
  if !id.is_a?(Integer) ||
    id < 1 || id > User.last.id
    set_error! "No such user!"
    redirect "/gigs/#{current_user.id}"
  end
end