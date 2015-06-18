class CreatePostToUser < ActiveRecord::Migration
  def change
    create_table :post_to_users do |t|
    	t.integer :post_id
    	t.integer :user_id
    end
  end
end
