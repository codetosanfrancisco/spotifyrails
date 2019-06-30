
CarrierWave.configure do |config|
  config.fog_provider = "fog/aws"
  config.fog_credentials = {
    provider:'AWS',
    aws_access_key_id:     ENV["S3_ACCESS_KEY_ID"],
    aws_secret_access_key: ENV["S3_SECRET_ACCESS_KEY"],
    region:'ap-southeast-1'
  }
  config.fog_directory  =  ENV["S3_BUCKET_NAME"]
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
end