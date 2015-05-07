require_relative 'post'
require_relative 'iowebsite'
require_relative 'comment'


require 'rubygems'
require 'nokogiri'         






doc = IOWebsite.open_html
Comment.import_html_file(doc)



# Comment.scrape_content


# Comment.scrape_names(doc)


# Comment.scrape_dates(doc)




content_stuff = Comment.scrape_content
content_stuff.length

name_stuff = Comment.scrape_names(doc)
name_stuff.length

date_stuff = Comment.scrape_dates(doc)
date_stuff.length


puts print_length = [content_stuff.length, name_stuff.length, date_stuff.length].min


for index in 1..print_length

  puts "COMMENT START==================="
  puts name_stuff[index]
  puts date_stuff[index]
  puts content_stuff[index]
  puts "COMMENT END===================="
  


index += 1

end




