#see all practice schedules for all users

get '/practice' do
  bounce_guest!
  @practice = PracticeSchedule.all
  erb :'practice/index'
end

#get a single practice schedule for 1 user
get '/user/:user_id/practice/:gig_id' do |user_id, gig_id|
   bounce_guest!
   @user = User.find(user_id)
   check_user(@user)
   @practice_schedule = PracticeSchedule.find_by(gig_id: gig_id)

   erb :'practice/schedule_show'
end

# get all practice schedules for the current user
get '/user/:user_id/practice' do |user_id|
  bounce_guest!
  @user = User.find(user_id)
  check_user(@user)
  erb :'practice/user_index'
end

#not needed since it is created in the gig

#create a new practice_schedule
# get '/user/:user_id/practice/new' do
#   bounce_guest!
#   @user = User.find(:user_id])
#   erb :'/practice/new'
# end

# post '/user/:user_id/practice/' do
#   Project.create(params[:schedule])
#   redirect '/user/:user_id/practice'
# end

#don't need since the schedule is tied to the gig
# #update a practice_schedule

# get '/user/:user_id/practice/:id/edit' do |id|

# end

# #delete a single practice schedule

# delete '/user/:user_id/practice/:id' do |id|

# end

