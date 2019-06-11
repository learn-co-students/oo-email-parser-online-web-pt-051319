require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails, :parse

  def initialize(emails)
    #@emails = emails
    self.parse = emails.gsub(/[\s|,]/," ").split.uniq
  end

end

#emails = "john@doe.com, person@somewhere.org"
#parser = EmailParser.new(emails)
