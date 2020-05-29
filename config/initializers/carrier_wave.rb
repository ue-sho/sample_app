if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],
      :aws_access_key_id     => ENV['AKIA3AWD5UYWGJA2CDEO'],
      :aws_secret_access_key => ENV['aZ1SUWpg5XJeh6SzcUPir3On1+dFsBK9qgmH6fWX']
    }
    config.fog_directory     =  ENV['uesho-sample-app']
  end
end