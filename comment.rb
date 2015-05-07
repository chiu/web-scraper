#comment.rb

require 'nokogiri'    
#require 'pry'


class Comment

  attr_accessor :primary_key, :username, :date, :content



  @@unformatted_comments = []
  @@formatted_comments = []

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

    def import_html_file(html_file)

      # @@unformatted_comments = html_file.search('.comment > font')
      #       @@unformatted_comments = html_file.search('.comment > font')
      #           @@unformatted_comments = html_file.search('.comment > font')
      #@@unformatted_comments = html_file.search('.comment > font')
        @@unformatted_comments = html_file.search('.comhead')
      return @@unformatted_comments

    end

    def format_comments
      name_array = []
      #binding.pry
      @@unformatted_comments.each do |unformatted_comment|

        @@formatted_comments << scrape_content(unformatted_comment)
        @@formatted_comments << "-------------"


      end

      return @@formatted_comments
    end





    def scrape_content(comment_block)
      comment_block
    end

    def scrape_name(comment_block)
      # doc.search('.comhead > a:first-child').map do |element|
      #   element.inner_text
      comment_block.search('.a').map do |element|
        element.inner_text
        #return "hi"
      end
    end


  end

end