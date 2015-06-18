class CreatePostToUser < ActiveRecord::Migration
  def change
    create_table :post_to_users do |t|
    	t.integer :id_post
    	t.integer :id_user
    end
  end
end
