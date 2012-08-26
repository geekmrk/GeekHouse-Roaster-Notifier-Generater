class AddProviderToBots < ActiveRecord::Migration
  def change
    add_column :bots, :provider, :string
    add_column :bots, :uid, :string
    add_column :bots, :screen_name, :string
    add_index :bots, [:provider, :uid]
    add_index :bots, [:screen_name]
  end
end
