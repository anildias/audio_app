class Post < ActiveRecord::Base
	# mount_uploader :audio, AudioUploader
	has_attached_file :audio_file,
    :storage => :dropbox,
    :dropbox_credentials => { :app_key => "81geikc974tp8pn",
			:app_secret => "mtqtyo5tixmh6kn",
			:access_token => "7x5jzkw41udfqsef",
			:access_token_secret => "p4kynqurwlb4bsy",
			:user_id => "93851919",
			:access_type => "app_folder"},
		:dropbox_visibility => 'public',
    :dropbox_options => {environment: ENV["RACK_ENV"]}
  validates_attachment_content_type :audio_file, :content_type => /\Aimage/
end
