#iowebsite.rb
require 'nokogiri'

class IOWebsite


  


  class << self

    def open_html
      doc = Nokogiri::HTML(File.open('post.html'))
      return doc
    end





  end





end