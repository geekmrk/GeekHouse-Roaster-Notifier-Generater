class Tweet < ActiveRecord::Base
  attr_accessible :message, :week
  belongs_to :bot
end
