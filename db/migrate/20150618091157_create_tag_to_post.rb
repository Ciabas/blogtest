class CreateTagToPost < ActiveRecord::Migration
  def change
    create_table :tag_to_posts do |t|
    	t.integer :tag_id
    	t.integer :post_id
    end
  end
end
