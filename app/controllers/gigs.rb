# see form to: add a new gig for the current user
get 'gigs/new' do
  @user_id = session[:user_id]
  erb :'/gigs/new.erb'
end

# add a new gig for the current user
post 'gigs/:user_id' do
  Gig.new(name: params['name'], date: params['date'], difficulty: difficulty_helper, user_id: params['user_id'])
  redirect '/gigs/:user_id'
end

# see form to: edit a gig for the current user / error & redirect if it's the wrong user
get 'gigs/edit/:gig_id' do

end

# post: edit a gig for the current user / error & redirect if it's the wrong user
put 'gigs/edit/:gig_id' do

end

# see form to: delete a gig for the current user / error & redirect if it's the wrong user
get 'gigs/delete/:gig_id' do

end

# delete a gig for the current user / error & redirect if it's the wrong user
delete 'gigs/delete/:gig_id' do

end

# see all gigs for the current user
get '/gigs/:user_id' do |user_id|

end

# see one gig for the current user
get 'gigs/:user_id/:gig_id' do |user_id, gig_id|

end

