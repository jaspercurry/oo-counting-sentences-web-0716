require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #self.split(/(?<=[?.!])/).count
      self.split(/[?]|[!]|[.]/).delete_if { |ele| ele == ""}.count
  end
end


# http://stackoverflow.com/questions/18089562/how-do-i-keep-the-delimiters-when-splitting-a-ruby-string


