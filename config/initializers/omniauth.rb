Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["599608173418-dtvnv5adj1g235t4n95pfpfm9gcmeb8r.apps.googleusercontent.com"], ENV["aAKQTMSscaX0nLFfOsvr2WK9"]
end
