class ApplicationController < Sinatra::Base
  get '/bakeries' do
    "Hello World"
  end

  get '/bakeries' do
    # Get all the bakeries from the database
    # Send them back as a JSON array
  end
end
