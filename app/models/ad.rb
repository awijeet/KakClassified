class Ad < ActiveRecord::Base
  belongs_to :category
  belongs_to :subcategory
  has_many :recommends
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :storage => :s3,
    :bucket => 'india.liveoncampus.com',
    :s3_credentials => {
      :access_key_id => 'AKIAJJJOHNZHTUACANSQ',
      :secret_access_key => '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'
    }
    

        validates_attachment_presence :image
        validates_attachment_size :image, :less_than => 5.megabytes
        validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
