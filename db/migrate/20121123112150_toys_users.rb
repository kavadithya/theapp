class ToysUsers < ActiveRecord::Migration
  def up
  	create_table :toys_users, :id => false do |t|
  		t.references :toy
  		t.references :user 
  	end
  end

  def down
  	drop_table :toys_users
  end
end
