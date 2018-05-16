class Userfile < ApplicationRecord
  has_many :serverfiles
  has_many :users, through: :serverfiles



end
