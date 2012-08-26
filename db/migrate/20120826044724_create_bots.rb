class CreateBots < ActiveRecord::Migration
  def change
    create_table :bots do |t|
      t.string :twitter_name
      t.string :bot_name
      t.datetime :tweet_time
      t.timestamps
    end
  end
end
