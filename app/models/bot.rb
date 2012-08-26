class Bot < ActiveRecord::Base
  attr_accessible :name
  has_many :tweets
  has_many :members
  
  def self.create_with_omniauth(auth)
    create! do |bot|
      bot.provider = auth["provider"]
      bot.uid = auth["uid"]
      bot.twitter_name = auth["info"]["name"]
      bot.screen_name = auth["info"]["nickname"]
    end
  end
end
