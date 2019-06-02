=begin
  Build a class EmailParser that accepts a string of unformatted 
  emails. The parse method on the class should separate them into
  unique email addresses. The delimiters to support are commas (',')
  or whitespace (' ').
=end
require 'pry'

class EmailParser 
  attr_accessor :emails  
  
  def initialize(emails)
    @emails = emails
  end  

=begin
  parses CSV emails
  parse space delimited emails 
  parse both CSV adn space delimited emails
  parses and removes duplicate emails
  into an Array, iterate through
=end
 
  
  def parse
    email_split = emails.split.map {|address| address.split(',')} #.split will separate the emails, .map invokes |address| once, giving .split(',')
    new_email = email_split.flatten.uniq      # .flatten will return the new array; every element in the array gets extracted into a new array 

end
  
end