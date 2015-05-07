require_relative 'post'
require_relative 'iowebsite'
require_relative 'comment'


require 'rubygems'
require 'nokogiri'         
      



# doc = IOWebsite.open_html



# test_post = Post.new(IOWebsite.open_html)


# #puts test_post.comments.inspect


doc = IOWebsite.open_html
Comment.import_html_file(doc)
#Comment.format_comments
#puts Comment.format_comments


puts Comment.import_html_file(doc)[1..5]

