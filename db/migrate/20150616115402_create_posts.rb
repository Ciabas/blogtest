class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.text :article
    	t.timestamps
    end
  end
end