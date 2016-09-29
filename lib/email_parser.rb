# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser

  def initialize(email_str)
    @email_str = email_str
  end

  def comma_chomp(array)
    array.map { |item| item.chomp(",") }
  end

  def parse
    email_array = @email_str.split(" ")
    comma_chomp(email_array).uniq
  end
end
