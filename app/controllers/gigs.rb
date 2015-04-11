# see form to: add a new gig for the current user
get '/gigs/new' do
  @user_id = current_user
  erb :'gigs/new'
end

# add a new gig for the current user
post '/gigs' do
  Gig.create(name: params[:name], date: params[:date], difficulty: difficulty_helper, user_id: params[:user_id])
  redirect "/gigs/#{current_user.id}"
end

# see form to: edit a gig for the current user / error & redirect if it's the wrong user
get '/gigs/edit/:gig_id' do

end

# post: edit a gig for the current user / error & redirect if it's the wrong user
put '/gigs/edit/:gig_id' do

end

# see form to: delete a gig for the current user / error & redirect if it's the wrong user
get '/gigs/delete/:gig_id' do

end

# delete a gig for the current user / error & redirect if it's the wrong user
delete '/gigs/delete/:gig_id' do

end

# see all gigs for a user
get '/gigs/:user_id' do |user_id|
  @user = User.find(user_id)
  @gigs = @user.gigs
  erb :'gigs/show_all'
end

# see one gig for a user
get '/gigs/:user_id/:gig_id' do |user_id, gig_id|
  @user = User.find(user_id)
  @gig = Gig.find(gig_id)
  erb :'gigs/show'
end

