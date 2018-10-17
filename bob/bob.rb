class Bob

  def self.hey(remark)
    @remark = remark || "" 
    @remark.strip!
    return "Fine. Be that way!" if responding_to_silence?
    return "Whoa, chill out!" if responding_to_shout?
    return "Calm down, I know what I'm doing!" if responding_to_yelling_question?
    return "Sure." if responding_to_question?
    

    "Whatever."
  end

  private

  def self.responding_to_silence?
    @remark.empty?
  end

  def self.responding_to_shout?
    @remark !~ /[a-z\?]/
  end

  def self.responding_to_question?
    @remark.end_with? "?"
  end

  def self.responding_to_yelling_question?
    @remark !~ /[a-z]/ and @remark.end_with? "?"
  end



end
