json.extract! userserver, :id, :online, :owner, :user_id, :userfile_id, :created_at, :updated_at
json.url userserver_url(userserver, format: :json)
