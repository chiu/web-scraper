require_relative 'post'
require_relative 'iowebsite'
require_relative 'comment'


require 'rubygems'
require 'nokogiri'         
      





doc = IOWebsite.open_html
Comment.import_html_file(doc)
puts Comment.scrape_content


Comment.scrape_names(doc)


Comment.scrape_dates(doc)




