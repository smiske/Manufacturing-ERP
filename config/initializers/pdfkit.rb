PDFKit.configure do |config|

  config.wkhtmltopdf = "/home/vijay/.rvm/gems/ruby-1.9.3-p392/bin/wkhtmltopdf" #Path to your wkhtmltppdf installation directory

  config.root_url = "http://0.0.0.0:3000" # Use only if your external hostname is unavailable on the server.

end