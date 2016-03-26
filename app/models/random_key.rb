module RandomKey
  CHAR_SET = Array('A'..'Z') +
             Array('a'..'z') +
             Array('0'..'9')

  CHAR_LENGTH = 6

  def self.generate(length = CHAR_LENGTH)
    CHAR_SET.sample(length).join
  end
end
