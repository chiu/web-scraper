require_relative 'post'
require_relative 'iowebsite'
require_relative 'comment'


require 'rubygems'
require 'nokogiri'         
      





doc = IOWebsite.open_html
puts Comment.import_html_file(doc)
#puts Comment.format_comments




