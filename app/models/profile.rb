class Profile < ActiveRecord::Base #model describes how something behaves
  belongs_to :user

  mount_uploader :picutre, PicUploader
end
