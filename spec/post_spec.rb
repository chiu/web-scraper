require 'spec_helper'

describe Post do

  before :each do
    @post = Post.new("hacker",  "hacker.com", 1, 99)
  end

  describe "#new" do
    it "takes three parameters and returns a Book object" do
      expect(@post).to be_an_instance_of Post
    end
  end

  describe "#title" do
    it "returns the correct title" do
      expect(@post.title).to eql "hacker"
    end
  end

  describe "#url" do
    it "returns the correct url" do
      expect(@post.url).to eql "hacker.com"
    end
  end


  describe "#points" do
    it "returns the correct points" do
      expect(@post.points).to eql 1
    end
  end

  
  describe "#item_id" do
    it "returns the correct item id" do
      expect(@post.item_id).to eql 99
    end
  end

   describe "#post_comments successfully returns all comments" do
    it "returns the correct item id" do
     # expect(@post.item_id).to 99
     expect(@post.comments).to be_an(Array)
    end
  end


end