# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails 

  def initialize(csv_emails)
    @emails = csv_emails
  end 

  def parse
    formatted_emails = emails.split.collect {|address| address.split(',')} #splits and collects email addresses
    formatted_emails.flatten.uniq #returns collection of split emails, flattens array and rids duplicates
  end
  
end