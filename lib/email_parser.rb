require 'pry'

class EmailParser
  attr_accessor :email_list
  
  
  def initialize(emails)
    @email_list = emails
    #binding.pry
  end
 
# def self.new(emails)
  
#    email = emails.split(",")
#    parser = self
#    parser.email_list=email
#    parser
#  end
  
  def parse 
  
    list = @email_list.split.map {|email| email.split(",")}
    list.flatten.uniq
    ##list.uniq
    
  end
end
