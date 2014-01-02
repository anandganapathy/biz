class AttachmentUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    # "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    "uploads/"
    #session[:filepath]="uploads/#{model.id}_#{original_filename}"
  end

  def store_path(for_file = filename)
    "uploads/#{for_file}"
  end

  def filename(uploaded_file = file)
    t = Time.now    
    if uploaded_file.present?
    
        "#{t.strftime('%m_%d_%y_%H_%M_%S')}.#{uploaded_file.extension}" 
  end
  end


  def extension_white_list
    %w(csv txt)
  end
end