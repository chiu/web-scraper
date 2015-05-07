#comment.rb

require 'nokogiri'    
#require 'pry'


class Comment

  attr_accessor :primary_key, :username, :date, :content

  @@unformatted_comments = []
  @@formatted_comments = []
  @@content_array = []

  def initialize(primary_key, username, date, content)
    @primary_key = primary_key
    @username = username
    @date = date
    @content = content
  end

  def return_unformatted_contents
    @@unformatted_comments
  end

  def return_formatted_contents
    @@formatted_comments

  end

  def print_comment
    #TO DO: outputs scraped comment in user friendly format.
    ultimate_string = "primary key: #{primary_key}\n"
    ultimate_string  << "username: #{self.username}\n"
    ultimate_string << "date: #{date}\n"
    ultimate_string <<  "content: #{content}\n"
  end


  ##class methods:
  class << self

    #html ok don't change

    def import_html_file(html_file)

      @@unformatted_comments = html_file.search('.comment > font')
      return @@unformatted_comments

    end

#format comments ok do not change; scrape content
def scrape_content
  @@unformatted_comments.each do |unformatted_comment|
    @@formatted_comments << unformatted_comment.inner_text
    #@@formatted_comments << "-------------"
  end
  return @@formatted_comments
end


def scrape_names(html_file)
  name_array = []
  formatted_names = []
  name_array = html_file.search('.comhead > a:first-child')
  #puts name_array.length
  name_array.each do |name|
    formatted_names << name.inner_text
    #formatted_names << "---------"
  end
  #puts formatted_names
  return formatted_names
end


def scrape_dates(html_file)
  date_array = []
  formatted_dates = []
  date_array = html_file.search('.comhead > a:nth-child(2)')
  #puts date_array.length
  date_array.each do |date|
    formatted_dates << date.inner_text
    #formatted_names << "---------"
  end
#  puts formatted_dates
return formatted_dates
end


end

end