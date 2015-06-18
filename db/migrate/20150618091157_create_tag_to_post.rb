class CreateTagToPost < ActiveRecord::Migration
  def change
    create_table :tag_to_posts do |t|
    	t.integer :id_tag
    	t.integer :id_post
    end
  end
end
