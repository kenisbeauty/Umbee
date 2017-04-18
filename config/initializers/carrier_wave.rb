if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIBEOAFBCJHTBL7XA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  'umbee'
  end
end