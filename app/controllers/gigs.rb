# see form to: add a new gig for the current user
get '/gigs/new' do
  bounce_guest!
  @user_id = current_user.id
  erb :'gigs/new'
end

# add a new gig for the current user

post '/gigs/new' do
  gig = Gig.create(params[:gig])
  user_id = gig.user_id
  gig.practice_schedules.create(user_id: user_id, gig_id: gig.id)
  redirect "/user/#{user_id}/practice/#{gig.id}"
end

# see form to: edit a gig for the current user / error & redirect if it's the wrong user
get '/gigs/edit/:gig_id' do |gig_id|
  bounce_guest!
  @gig = Gig.find(gig_id)
  check_permission(@gig)
  erb :'gigs/edit'
end

# post: edit a gig for the current user / error & redirect if it's the wrong user
put '/gigs/edit' do

end

# see form to: delete a gig for the current user / error & redirect if it's the wrong user
get '/gigs/delete/:gig_id' do |gig_id|
  bounce_guest!
  check_permission(Gig.find(gig_id))
  erb :'gigs/delete'
end

# delete a gig for the current user / error & redirect if it's the wrong user
delete '/gigs/delete' do
  bounce_guest!
  check_permission(Gig.find(:gig_id))
  @gig = Gig.find_by(email: params[:email])
end

# see all gigs for a user
get '/gigs/:user_id' do |user_id|
  bounce_guest!
  @user = User.find(user_id)
  check_user(@user)
  @gigs = @user.gigs
  erb :'gigs/show_all'
end

# see one gig for a user
get '/gigs/:user_id/:gig_id' do |user_id, gig_id|
  bounce_guest!
  @user = User.find(user_id)
  check_user(@user)
  @gig = Gig.find(gig_id)
  erb :'gigs/show'
end

