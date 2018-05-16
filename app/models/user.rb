class User < ApplicationRecord
  has_many :userservers
 has_many :userfiles, through: :userservers

  validates :name, presence: true
  validates :age, presence: true
  validates :adminrights, presence: true

end
