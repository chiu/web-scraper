require_relative 'post'
require_relative 'iowebsite'
require_relative 'comment'


require 'rubygems'
require 'nokogiri'         






doc = IOWebsite.open_html
Comment.import_html_file(doc)



content_stuff = Comment.scrape_content
content_stuff.length

name_stuff = Comment.scrape_names(doc)
name_stuff.length

date_stuff = Comment.scrape_dates(doc)
date_stuff.length


print_length = [content_stuff.length, name_stuff.length, date_stuff.length].min



ultimate_comment_array = []

for index in 0..print_length


  #puts "COMMENT START==================="
  name_temp = name_stuff[index]
  date_temp = date_stuff[index]
  content_temp = content_stuff[index]

  comment_object = Comment.new(index, name_temp , date_temp, content_temp)
  #puts comment_object.to_s
  ultimate_comment_array << comment_object
 # puts "COMMENT END===================="


 index += 1
end



puts ultimate_comment_array[1].print_comment




