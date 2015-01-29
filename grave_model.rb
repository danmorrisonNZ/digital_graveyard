require 'CSV'

class Tombstones

end

class TombstoneConstrutor(name,dob,dod,last_words)

  def initialize
    @date_of_birth = dob
    @date_of_death = dod
    @name = name
    @last_words = last_words
  end

end