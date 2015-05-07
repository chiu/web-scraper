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


  def scrape_date
  end

  def scrape_content
  end


  ##class methods:
  class << self

    def import_html_file(html_file)
      #@@unformatted_comments = html_file.search('.comhead')
       @@unformatted_comments = html_file.search('.comment > font').inner_text
       #puts @@unformatted_comments
      return @@unformatted_comments

    end

    def format_comments
      name_array = []
      @@unformatted_comments.each do |comment|
        name_temp = scrape_name(comment)
        name_array << name_temp
        # age_temp = scrape_age(comment)
        # content_temp = scrape_content(comment)
        # @@formatted_comments << Comment.new(name_temp, age_temp, comment_temp)
        # puts @@formatted_comments
      end
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