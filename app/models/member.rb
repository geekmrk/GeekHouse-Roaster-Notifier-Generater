class Member < ActiveRecord::Base
  attr_accessible :name, :turn
  belongs_to :bot
end
