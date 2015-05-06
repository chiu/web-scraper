#comment.rb

require 'nokogiri'    


class Comment

  attr_accessor :primary_key, :username, :date, :content


    @@unformatted_comments = []
    @@formatted_comments = []


  def initialize(primary_key, username , date, content)
    @username = username
    @date = date
    @content = content
  end


  def to_s
    #TO DO: outputs scraped comment in user friendly format.
  end





  def scrape_name(comment_block)
    # doc.search('.comhead > a:first-child').map do |element|
    #   element.inner_text
    return "hi"
    
  end


  def scrape_date
  end

  def scrape_content
  end




  ##class methods:
  class << self

    def import_html_file(html_file)
      @@unformatted_comments = html_file.search('.comhead')

    end


    def format_comments

        @@unformatted_comments.each do |comment|
          name_temp = scrape_name(comment)
        @@formatted_comments << name_temp
        puts @@formatted_comments
      end
    end


  end



end