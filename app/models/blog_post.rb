class BlogPost < ActiveRecord::Base
 
  has_attached_file :download,
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  s3_file = bucket.object['Test_Post_Txt.txt'].get({response_target: '/post1/Test_Post_Txt.rtf'})
  s3_file.body
  def s3_credentials
    {:bucket => "S3_BUCKET_NAME", :access_key_id => "AWS_ACCESS_KEY_ID", :secret_access_key => "AWS_SECRET_ACCESS_KEY"}
  end

  

  

	#has_attached_file :image, :styles => {:medium => "300x300>", :thumb => "100x100>"}
	#validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end


# "AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY", "AWS_REGION", "S3_BUCKET_NAME")
