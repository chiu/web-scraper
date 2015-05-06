#post.rb
#require 'nokogiri'



class Post



  attr_reader :title, :url, :points, :item_id


  def initialize(title, url, points, item_id, html_file)
    @title = title
    @url = url
    @points = points
    @item_id = item_id
    @html_file = html_file
  end

  

  def extract_usernames
    @html_file.search('.comhead > a:first-child').map do |element|
      element.inner_text
    end
  end





  


  def comments
     @html_file.search('.comhead')
  end


  def add_comments




  end











end