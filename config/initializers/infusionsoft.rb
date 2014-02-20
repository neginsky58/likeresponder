Infusionsoft.configure do |config|
  config.api_url = 'fg146.infusionsoft.com' # example infused.infusionsoft.com
  config.api_key = '2f73667a6df3aae9a6c6148e3dc3800690df9d689ddcf350b9ad9305a048ec69'
  config.api_logger = Logger.new("#{Rails.root}/log/infusionsoft_api.log") # optional logger file
end