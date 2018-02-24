require 'spec_helper'
# We are testing the class 'Book'
#:each means the method is run before each test, you can use :once or :all

describe Book do
    before :each do
        @book = Book.new "Title", "Author", :category
    end

    describe "#new" do
        it "returns a new Book object" do
            @book.should be_an_instance_of Book 
            #`object.should do_something` shows you have an object and it `should` or `should_not` do something
        end
        it 'throws an ArgumentError when given fewer than 3 parameters' do
            lambda {Book.new "Title", "Author"}.should raise_exception ArgumentError
        end
    end
    describe "#title" do
        it "returns the correct title" do
            @book.title.should eql "Title"
        end
    end 
    describe "#author" do
        it "returns the correct author" do
            @book.author.should eql "Author"
        end
    end 
    describe "#category" do
        it "returns the correct category" do
            @book.category.should eql :category
        end
    end 
end