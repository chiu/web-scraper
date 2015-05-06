require_relative 'post'
require_relative 'iowebsite'
require 'nokogiri'



doc = IOWebsite.open_html


#puts doc.inspect



test_post = Post.new("wow", "wow.com", 1, 88, IOWebsite.open_html)
#puts test_post.inspect

#puts test_post.comments(doc)


puts test_post.comments[3].inspect