class AddRatingForUser < ActiveRecord::Migration
	def change
		add_column :users, :rating, :text
	end
end