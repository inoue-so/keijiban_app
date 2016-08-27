class Board < ActiveRecord::Base
  
  has_many :comments
  validates :name, presence: true, length: { in: 4..32 }, uniqueness: true
end
