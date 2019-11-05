# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser 
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    new_email_list = []
    new_email_list = @emails.split(" ")
    if new_email_list.size == 1 
      new_email_list = @emails.split(",")
    end
  
    new_email_list = new_email_list.uniq
    new_email_list
  end

  
end

