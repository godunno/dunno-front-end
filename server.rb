require 'webrick'

WEBrick::HTTPServer.new(:Port => 8000, :DocumentRoot => 'public').start
