class AddAttachmentTextToBlogPosts < ActiveRecord::Migration
  def self.up
    change_table :blog_posts do |t|
      t.attachment :text
    end
  end

  def self.down
    remove_attachment :blog_posts, :text
  end
end
