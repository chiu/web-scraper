#post.rb
#require 'nokogiri'



class Post

  @comment_array =[]


  attr_reader :title, :url, :points, :item_id, :comment_array


  # def initialize(title, url, points, item_id, html_file)
  #   @title = title
  #   @url = url
  #   @points = points
  #   @item_id = item_id
  #   @html_file = html_file
  # end


  def initialize(html_file)

    @comment_array = @html_file.search('.comhead')
    #attribute info
    #comment stuff

  end

  

  def extract_usernames
    @html_file.search('.comhead > a:first-child').map do |element|
      element.inner_text
    end
  end




  def comments
     #@comment_array = @html_file.search('.comhead')
     @comment_array
  end




  def add_comments(comment_object)

    @comment_array << comment_object


  end











end