get '/' do
  # Look in app/views/index.erb
  @notes = Note.all
  erb :index
end

# Edit
get '/notes/edit/:id' do
  @note = Note.find(params[:id])
  erb :edit
end

# Create
post '/notes' do
  Note.create(params[:note])
  redirect '/'
end

# Read
get '/notes/:id' do
  @note = Note.find(params[:id])
  erb :view_note
end

# Update
put '/notes/:id' do
  note = Note.find(params[:id])
  note.update_attributes(params[:note])
  redirect '/'
end

# Destroy
delete '/notes/:id' do
  note = Note.find(params[:id])
  note.destroy
  redirect '/'
end


