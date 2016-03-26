class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
    	t.string :title
    	t.string :subTitle
    	t.string :date
    	t.string :authorName

      t.timestamps null: false
    end
  end
end
