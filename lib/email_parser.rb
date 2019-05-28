# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :list_of_emails

  def initialize(emails)
    @list_of_emails = emails
  end

  def parse
    @list_of_emails.split(/\,\s|\s|\,/).uniq
  end

end
