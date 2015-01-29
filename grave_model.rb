require 'CSV'

class Tombstones

  def create

  end


end

class TombstoneConstrutor

  def initialize(name,dob,dod,last_words)
    @date_of_birth = dob
    @date_of_death = dod
    @name = name
    @last_words = last_words
  end

end