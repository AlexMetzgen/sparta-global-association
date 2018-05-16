class Userserver < ApplicationRecord
  belongs_to :user
  belongs_to :userfile
end
