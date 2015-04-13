get '/' do
   if current_user
     redirect 'gigs/new'
   else
     erb :'index'
   end
end
