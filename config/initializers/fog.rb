require 'carrierwave/orm/activerecord'

unless Rails.env.staging? || Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = !Rails.env.test?
  end
else

  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_directory = ENV['S3_BUCKET_NAME']
    #config.fog_host = 's3-eu-west-1.amazonaws.com'
    config.fog_public = true
    config.fog_credentials = {

	# Keys for Amazon needs to be set by command line:
	# $ heroku config:set AWS_ACCESS_KEY_ID=xxx AWS_SECRET_ACCESS_KEY=yyy
	# $ heroku config:set S3_BUCKET_NAME=czani
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: 'us-east-1'
    }
  end

end