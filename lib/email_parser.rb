class EmailParser

	def initialize(emails)
		@emails = emails
	end

	def parse
		@emails.gsub(/\,/, ' ').split(' ').uniq
	end

end