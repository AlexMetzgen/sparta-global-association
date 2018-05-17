json.extract! userfile, :id, :filename, :date_created, :owner, :size, :created_at, :updated_at
json.url userfile_url(userfile, format: :json)
