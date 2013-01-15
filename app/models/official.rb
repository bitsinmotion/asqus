class Official < ActiveRecord::Base
  has_many :offices, :through => :official_tenures
  has_many :users, :through => :user_groups, :as => :group

  attr_accessible :email, :name, :photo

  validates_presence_of :name

  after_save :store_photo
    
  def has_photo?
    File.exists? photo_filename
  end
  
  def photo=(file_data)
    unless file_data.blank?
      @file_data = file_data
      self.photo_extension = file_data.original_filename.split('.').last.downcase
    end
  end

  OFFICIAL_PHOTO_STORE = File.join Rails.root, 'public', 'official_photo_store'
  
  def photo_filename
    File.join OFFICIAL_PHOTO_STORE, "#{id}.#{photo_extension}"
  end
  
  def photo_path
    "/official_photo_store/#{id}.#{photo_extension}"
  end
  

private

  def store_photo
    if @file_data
      # if photo directory doesn't exist, make it
      FileUtils.mkdir_p OFFICIAL_PHOTO_STORE
      File.open(photo_filename, 'wb') do |f|
        f.write(@file_data.read)
      end
      @file_data = nil # file save only once
    end
  end


  

  

end
