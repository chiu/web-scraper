#comment.rb

require 'nokogiri'    
#require 'pry'


class Comment

  attr_accessor :primary_key, :username, :date, :content



  @@unformatted_comments = []
  @@formatted_comments = []
  @@content_array = []

  def initialize(primary_key, username , date, content)
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




  def to_s
    #TO DO: outputs scraped comment in user friendly format.
  end


  def scrape_date
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
    @@formatted_comments << "-------------"

  end

  return @@formatted_comments
end




def scrape_names(html_file)
  name_array = []
  name_array = html_file.search('.comhead > a:first-child').inner_text

 end







end

end