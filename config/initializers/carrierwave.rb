CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'xxx',                        # required
    :aws_secret_access_key  => 'yyy',                        # required
    :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
    :host                   => 's3.example.com',             # optional, defaults to nil
    :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'name_of_directory'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end




#CarrierWave.configure do |config|
  #config.fog_credentials = {
    #provider:              'AWS',
    #aws_access_key_id:      ENV['S3_KEY'],
    #aws_secret_access_key:  ENV['S3_SECRET'],
  #}

  # For testing, upload files to local `tmp` folder.
  #if Rails.env.test? || Rails.env.cucumber?
    #config.storage          = :file
    #config.enable_processing = false
    #config.root              = "#{Rails.root}/tmp"
  #else
    #config.storage = :fog
  #end

  #config.cache_dir        = "#{Rails.root}/tmp/uploads" # To let CarrierWave work on Heroku
  #config.fog_directory    = ENV['S3_BUCKET_NAME']
#end