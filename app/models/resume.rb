class Resume < ActiveRecord::Base
  
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :name, :attachment, :col_sept, presence: true # Make sure the owner's name is present.

  
end